import 'package:flutter/material.dart';
import 'package:notes_app/pages/music_first_page.dart';
import 'package:notes_app/pages/music_list.dart';
import 'package:notes_app/pages/settings_page.dart';

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
      home: FirstPage(),
      routes: {
        '/musicList': (context) => const MusicList(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
