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
  List<Note> allNotes = [
    // Note(
    //     userName: 'John Michaels',
    //     date: DateTime.now(),
    //     noteDesc:
    //         "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.")
  ];

  void getNote(String note) {
    setState(() {
      allNotes.add(new Note(
          userName: 'Abdullah.ch', date: DateTime.now(), noteDesc: note));
    });
  }

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
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: allNotes.map((note) {
                    return allNotes.isEmpty ? Center(
                      child: Text('Empty List ...'),
                    ) : Card(
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
              userName: 'Abdullah.ch',
              note: getNote,
            );
          }));
        },
      ),
    );
  }
}
