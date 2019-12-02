import 'package:flutter/material.dart';

class ClosedFriend extends StatefulWidget {
  ClosedFriend({Key key}) : super(key: key);

  @override
  _ClosedFriendState createState() => _ClosedFriendState();
}

class _ClosedFriendState extends State<ClosedFriend> {
  final GlobalKey<_ClosedFriendState> key = GlobalKey<_ClosedFriendState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            //stops: [0.1, 0.5,0.5, 0.7, 0.9],
            colors: [
              Colors.blueGrey[100],
              Colors.blueGrey[100],
            ],
          ),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Text(
              "This is Closed Friend class.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
