import 'package:flutter/material.dart';

class NameTag extends StatefulWidget {
  NameTag({Key key}) : super(key: key);

  @override
  _NameTagState createState() => _NameTagState();
}

class _NameTagState extends State<NameTag> {
  final GlobalKey<_NameTagState> key = GlobalKey<_NameTagState>();

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
                Colors.red[100],
                Colors.red[100],
              ],
            ),
          ),
        child: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Text(
              "This is NameTag class.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
