import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  // text input controller
  final TextEditingController _textController = TextEditingController();
  void greetUser(){
    debugPrint('Hello, ${_textController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _textController,
            ),
            ElevatedButton(onPressed: greetUser, child: Text('Greet'))
          ],
        ),
      ),
    );
  }
}