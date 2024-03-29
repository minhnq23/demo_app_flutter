import 'package:demo_my_app/src/presentation/widgets/headers/app_bar_home.dart';
import 'package:demo_my_app/src/presentation/widgets/list/list_view_album.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        headerTitle: "Home",
      ),
      body: Center(
        child: AlbumListView(),
      ),
    );
  }
}
