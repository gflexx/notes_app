import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intergalactic Arts'),
        backgroundColor: Colors.deepPurple,
        elevation: 90,
      ),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/musicList');
          },
          child: Text('Go to Intergalactic Music List'),
        ),
      ),
      backgroundColor: Colors.deepPurple[200],
    );
  }
}
