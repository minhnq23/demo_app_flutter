import 'package:demo_my_app/src/data/models/album.dart';
import 'package:demo_my_app/src/presentation/widgets/check_box_ex.dart';
import 'package:demo_my_app/src/presentation/widgets/headers/app_bar_screen.dart';
import 'package:demo_my_app/src/presentation/widgets/list/drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  final Album? data;

  DetailPage({this.data});
  @override
  Widget build(BuildContext context) {
    print('$data and ');
    return Scaffold(
      appBar: const Header(
        headerTitle: "Chi  tiết",
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                '${data?.title}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              child: CheckboxExample(),
            ),
            SizedBox(
              width: 50,
              child: DropdownButtonExample(),
            )
          ],
        ),
      ),
    );
  }
}
