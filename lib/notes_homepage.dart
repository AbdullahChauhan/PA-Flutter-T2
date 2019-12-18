import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './note.dart';
import './newnote_page.dart';

class NotesHomePage extends StatefulWidget {

  @override
  _NotesHomePageState createState() => _NotesHomePageState();
}

class _NotesHomePageState extends State<NotesHomePage> {

  final List<Note> notes = [
    Note(
        id: 'n001',
        userName: 'Abdullah',
        date: DateTime.now(),
        noteDesc:
            'You might want to create a list that scrolls horizontally rather than vertically. The ListView widget supports horizontal lists.'),
    Note(
        id: 'n002',
        userName: 'Usama',
        date: DateTime.now(),
        noteDesc:
            'Use the standard ListView constructor, passing in a horizontal scrollDirection, which overrides the default vertical direction.'),
    Note(
        id: 'n003',
        userName: 'Usama',
        date: DateTime.now(),
        noteDesc:
            'Use the standard ListView constructor, passing in a horizontal scrollDirection, which overrides the default vertical direction.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 16.0, right: 8.0),
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12.0)),
                      width: 160.0,
                      height: 120.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: notes.map((note) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(note.userName),
                                Text(DateFormat.yMMMMd().format(note.date)),
                              ],
                            ),
                            Column(
                              children: <Widget>[Text(note.noteDesc)],
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) {
                return AddNewNote(userName: 'Abdullah',);
              }
            )
          );
        },
      ),
    );
  }
}
