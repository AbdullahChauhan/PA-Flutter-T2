import 'package:flutter/material.dart';
import './notes_homepage.dart';

void main() => runApp(Notes());

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesHomePage(),
    );
  }
}
