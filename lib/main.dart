import 'package:flutter/material.dart';
import 'package:music_app/pages/HomeScreen.dart';
import 'package:music_app/pages/LibraryScreen.dart';
import 'package:music_app/pages/ProfileScreen.dart';
import 'package:music_app/pages/SearchScreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/search": (context) => SearchScreen(),
        "/library": (context) => LibraryScreen(),
        "/profile": (context) => ProfileScreen(),
      },
    );
  }
}
