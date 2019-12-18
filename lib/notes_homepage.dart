import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './resuable_useravatarcard.dart';
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
                    ReusableUserAvatarCard(
                      userName: 'John Michaels',
                      imgUrl: 'assets/images/avt1.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Saqlain Kumar',
                      imgUrl: 'assets/images/avt2.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Austen Tyler',
                      imgUrl: 'assets/images/avt3.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Zoha Emery',
                      imgUrl: 'assets/images/avt4.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Aniyah Zhang',
                      imgUrl: 'assets/images/avt5.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Jamel Coombes',
                      imgUrl: 'assets/images/avt6.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Andrew Bannister',
                      imgUrl: 'assets/images/avt7.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Haris Quintero',
                      imgUrl: 'assets/images/avt8.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Keziah Talley',
                      imgUrl: 'assets/images/avt9.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Shah Murray',
                      imgUrl: 'assets/images/avt10.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Elara Navarro',
                      imgUrl: 'assets/images/avt11.jpg',
                    ),
                    ReusableUserAvatarCard(
                      userName: 'Rocky Downs',
                      imgUrl: 'assets/images/avt12.jpg',
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
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return AddNewNote(
              userName: 'Abdullah',
            );
          }));
        },
      ),
    );
  }
}
