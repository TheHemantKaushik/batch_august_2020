import 'package:flutter/material.dart';
import 'package:hello_api/feature/home/home_page.dart';
import 'package:hello_api/feature/login/login_page.dart';
import 'package:hello_api/feature/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
    );
  }
}

Map<String, WidgetBuilder> get routes => {
      // "/": (BuildContext context) => SplashPage(),
      "/": (BuildContext context) => LoginPage(),
      "/login": (BuildContext context) => LoginPage(),
      "/home": (BuildContext context) => HomePage(),
    };
