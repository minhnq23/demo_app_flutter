import 'package:demo_my_app/src/presentation/widgets/headers/app_bar_home.dart';
import 'package:flutter/material.dart';
class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: Header(headerTitle: "Home",),
      body: Center(
        child: Image(image: AssetImage('assets/images/shape.png')) ,
        ),
      );
  }
}