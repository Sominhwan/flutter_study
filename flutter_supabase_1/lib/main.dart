import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
      url: "https://lvjvquhxuyuwspdbiypj.supabase.co",
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imx2anZxdWh4dXl1d3NwZGJpeXBqIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA1NzIyNjUsImV4cCI6MTk5NjE0ODI2NX0.n1YJi28BrNygdgX66d5OU8t3sDM36xP3mLdq1nWl9_4"
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Supabase.instance.client.from("todo").select().then((value){
    //   print(value);
    // });

    Supabase.instance.client.from("todo").stream(primaryKey: ["idx"]).listen((event) {
      print(event);
    });
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: StreamBuilder<List<Map<String, dynamic>>>(
              stream: Supabase.instance.client.from("todo").stream(primaryKey: ["idx"]),
              builder: (context, snapshot) {
                return ListView(
                  children: snapshot.data?.map((e) => Text(e["content"])).toList()??[],
                );
              }
            ),
        ),
      ),
    );
  }
}
