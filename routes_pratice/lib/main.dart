import 'package:flutter/material.dart';
import 'package:routes_pratice/routes.dart';
import 'package:routes_pratice/view/first_page.dart';
import 'package:routes_pratice/view/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '페이지 이동',
      routes: {
        Routes.first: (context) => const FirstPage(),
        Routes.second: (context) => const SecondPage(),
      },
      initialRoute: Routes.first,
    );
  }
}
