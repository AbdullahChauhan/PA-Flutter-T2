import 'package:flutter/material.dart';

class ReusableUserAvatarCard extends StatelessWidget {
  final String userName;
  final String imgUrl;

  ReusableUserAvatarCard({@required this.userName, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      margin: EdgeInsets.only(bottom: 16.0, right: 8.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imgUrl,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                      Colors.white.withOpacity(0.0),
                      Colors.blue.withOpacity(0.75),
                    ],
                        stops: [
                      0.0,
                      1.0
                    ])),
              ),
              Positioned(
                bottom: 10.0,
                left: 15.0,
                child: Text(
                  userName,
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          )),
    );
  }
}
