import 'package:demo_my_app/src/routers/app_router.dart';
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
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          tooltip: "Back",
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // context.go('/home');
            AppRouter.goBack(context);
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Back")));
          },
        ),
        title: Text(
          headerTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Show Snackbar',
            color: Colors.white,
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
