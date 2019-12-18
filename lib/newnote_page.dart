import 'package:flutter/material.dart';

class AddNewNote extends StatelessWidget {

  final String userName;
  AddNewNote({@required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello $userName'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
    );
  }
}