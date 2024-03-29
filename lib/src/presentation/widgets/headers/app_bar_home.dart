import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String headerTitle;

  const Header({Key? key, required this.headerTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.cyan,
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          tooltip: "Menu",
          color: Colors.cyan,
          icon: const Icon(Icons.search),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Menu")));
          },
        ),
        title: Text(headerTitle,style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu_rounded),
            tooltip: 'Show Snackbar',
            color: Colors.cyan,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
