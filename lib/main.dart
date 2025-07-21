import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(27),
            child: Text('Intergalactic Music')
          ),
          backgroundColor: Colors.deepPurple,
          elevation: 90,
          leading: IconButton(
            onPressed: () {
              debugPrint('Menu Tapped');
            },
            icon: Icon(Icons.menu, color: Colors.white70),
            // padding: EdgeInsets.all(27),
          ),
          actions: [
            IconButton(
              onPressed: () {
                debugPrint('Setting Tapped');
              },
              icon: Icon(Icons.settings, color: Colors.white70),
              // padding: EdgeInsets.all(27),
            ),
          ],
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple,
            // padding: EdgeInsets.all(27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Galactic Center Records',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.album_rounded, color: Colors.white, size: 78),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
