
import 'package:demo_my_app/src/presentation/widgets/headers/app_bar_screen.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(
        headerTitle: "Setting",
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('HiHi'),
        ),
      ),
    );
  }
}
