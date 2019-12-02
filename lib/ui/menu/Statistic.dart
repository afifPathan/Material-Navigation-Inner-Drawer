import 'package:flutter/material.dart';

class Statistic extends StatefulWidget {
  Statistic({Key key}) : super(key: key);

  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  final GlobalKey<_StatisticState> key = GlobalKey<_StatisticState>();

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
              Colors.cyan[100],
              Colors.cyan[100],
            ],
          ),
        ),
        child: Container(
          alignment: Alignment.topCenter,
          child: Center(
            child: Text(
              "This is Statistic class.",
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}
