import 'package:flutter/material.dart';

class SuggestedPeople extends StatefulWidget {
  SuggestedPeople({Key key}) : super(key: key);

  @override
  _SuggestedPeopleState createState() => _SuggestedPeopleState();
}

class _SuggestedPeopleState extends State<SuggestedPeople> {
  final GlobalKey<_SuggestedPeopleState> key =
      GlobalKey<_SuggestedPeopleState>();

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
              Colors.brown[100],
              Colors.brown[100],
            ],
          ),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Text(
              "This is Suggested People class.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
