import 'package:flutter/material.dart';
import 'package:routes_pratice/routes.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('두번째 화면 열기'),
              onPressed: () {
                Navigator.pushNamed(context, Routes.second, arguments: '안녕하세요').then((value) => print(value));
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
