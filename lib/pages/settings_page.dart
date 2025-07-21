import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(27),
            child: Text('Settings'),
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 90,
        ),
    );
  }
}