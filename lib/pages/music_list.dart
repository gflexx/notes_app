import 'package:flutter/material.dart';

const int musicCount = 27;

class MusicList extends StatelessWidget {
  const MusicList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[200],
        appBar: AppBar(
          title: Container(
            padding: EdgeInsets.all(27),
            child: Text('Intergalactic Music'),
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
              // padding EdgeInsets.all(27),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: musicCount,
          itemBuilder: (context, index) => ListTile(
            onTap: () {
              debugPrint('Music ${index + 1} Tapped');
            },
            leading: Icon(
              Icons.play_circle_outline,
              size: 45,
            ),
            title: Text('Music ${(index * 2)}'),
            subtitle: Text('Description about $index'),
            trailing: IconButton(
              onPressed: () {
                debugPrint('Read more about ${index + 1} Tapped');
              },
              icon: Icon(Icons.select_all),
            ),
          ),
        ),
      );
  }
}