import 'package:demo_my_app/src/presentation/pages/detail_page.dart';
import 'package:demo_my_app/src/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../data/models/album.dart';

class AlbumListView extends StatelessWidget {
  Future<List<dynamic>> fetchPhotos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1/photos'));
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<dynamic>>(
        future: fetchPhotos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    print(snapshot.data![index]);
                    Album album = Album.fromJson(snapshot.data![index]);
                    // AppRouter.navigateSend(
                    //     context, '/detail',snapshot.data![index]['title']);
                    Navigator.push(
                      context,
                      MaterialPageRoute(

                        builder: (context) => DetailPage(data: album),
                      ),
                    );
                  },
                  // leading: Image.network(snapshot.data![index]['thumbnailUrl']),
                  leading: Text('${snapshot.data![index]['id']}'),
                  title: Text(snapshot.data![index]['title']),
                );
              },
            );
          }
        },
      ),
    );
  }
}
