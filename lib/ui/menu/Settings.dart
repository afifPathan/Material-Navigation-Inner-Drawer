import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final GlobalKey<_SettingsState> key = GlobalKey<_SettingsState>();

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
              Colors.black12,
              Colors.black12,
            ],
          ),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Text(
              "This is Settings class.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
