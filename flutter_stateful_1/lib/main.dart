import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_stateful_1/counter_controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Parent(),
    );
  }
}

class Parent extends StatefulWidget {
  const Parent({Key? key}) : super(key: key);

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  // 2번 자식한테 줄 함수
  int count = 0;

  // 1번 자식한테 줄 함수
  void setCount(int newCount){
    setState(() {
      count = newCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Child1(callback: setCount),
        Child2(count: count),
      ],
    );
  }
}
class Child1 extends StatelessWidget {
  final Function callback;

  const Child1({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = context.read<CounterController>();
    return ElevatedButton(
      onPressed: (){
        counterController.changeTo(Random().nextInt(100));
      },
      child: const Text("난수 생성"),
    );
  }
}

class Child2 extends StatelessWidget {
  final int count;
  const Child2({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterController = context.watch<CounterController>();
    return Text("${counterController.count}");
  }
}