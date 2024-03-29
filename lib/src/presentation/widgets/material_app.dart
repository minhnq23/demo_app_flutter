
import 'package:flutter/material.dart';

class MyMaterialApp extends MaterialApp {
  const MyMaterialApp({
    Key? key,
    String title = '',

    bool debugShowCheckedModeBanner = false,
  }) : super(
    key: key,
    title: title,
    debugShowCheckedModeBanner: debugShowCheckedModeBanner,

  );

  @override
  // TODO: implement debugShowCheckedModeBanner
  bool get debugShowCheckedModeBanner => false;
}
