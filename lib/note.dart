import 'package:flutter/material.dart';

class Note {
  final String id;
  final String userName;
  final DateTime date;
  final String noteDesc;

  Note({
    @required this.id, @required this.userName, @required this.date, @required this.noteDesc
  });
}