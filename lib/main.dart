import 'package:flutter/material.dart';
import 'package:notes_app/pages/todo_page.dart';
void main() {
  runApp(const MyApp());
}

const int musicCount = 27;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        useMaterial3: false,
      ),
    );
  }
}
