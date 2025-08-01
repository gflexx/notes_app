import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/pages/todo_page.dart';

void main() async {
  // init hive
  await Hive.initFlutter();

  // open box with wildcard var
  var _ = await Hive.openBox('todoBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
      theme: ThemeData(primarySwatch: Colors.yellow, useMaterial3: false),
    );
  }
}
