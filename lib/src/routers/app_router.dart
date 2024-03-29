import 'package:demo_my_app/src/data/models/album.dart';
import 'package:demo_my_app/src/presentation/pages/detail_page.dart';
import 'package:demo_my_app/src/presentation/pages/home_page.dart';
import 'package:demo_my_app/src/presentation/pages/plugin_page.dart';
import 'package:demo_my_app/src/presentation/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SignIn());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/detail':
        return MaterialPageRoute(builder: (_) =>  DetailPage());
      case '/setting':
        return MaterialPageRoute(builder: (_) => const Setting());

      default:

        return MaterialPageRoute(builder: (_) => const SignIn());
    }
  }

  static void navigateTo(BuildContext context, String routeName,) {
    Navigator.pushNamed(context, routeName);
  }
  static void navigateSend(BuildContext context, String routeName, String data) {
    print('$data: data hih');
    Navigator.pushNamed(context, routeName, arguments: data);
  }



  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }
}


