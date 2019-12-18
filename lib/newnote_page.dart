import 'package:flutter/material.dart';

typedef GetNote(String note);

class AddNewNote extends StatefulWidget {
  final String userName;
  final GetNote note;
  AddNewNote({@required this.userName, this.note});

  @override
  _AddNewNoteState createState() => _AddNewNoteState();
}

class _AddNewNoteState extends State<AddNewNote> {
  final noteTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello ${widget.userName}'),
      ),
      body: TextField(
        decoration: InputDecoration(labelText: 'Write anything ...'),
        controller: noteTextController,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          Navigator.of(context).pop();
          widget.note(noteTextController.text);
        },
      ),
    );
  }
}
