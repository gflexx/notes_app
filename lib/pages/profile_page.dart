import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(27),
            child: Text('Profile'),
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 90,
        ),
    );
  }
}