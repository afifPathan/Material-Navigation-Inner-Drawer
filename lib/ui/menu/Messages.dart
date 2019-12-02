import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  Messages({Key key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  final GlobalKey<_MessagesState> key = GlobalKey<_MessagesState>();

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
              Colors.teal[100],
              Colors.teal[100],
            ],
          ),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Text(
              "This is Messages class.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
