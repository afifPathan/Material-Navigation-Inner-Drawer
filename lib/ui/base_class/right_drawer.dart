import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RightDrawer extends StatelessWidget {
  final GestureTapCallback settingsCallback;
  final GestureTapCallback innerArrowCallback;
  final GestureTapCallback profileCallback;
  final GestureTapCallback statisticCallback;
  final GestureTapCallback activityCallback;
  final GestureTapCallback facebookCallback;
  final GestureTapCallback instagramCallback;

  const RightDrawer(
      {Key key,
      @required this.settingsCallback,
      this.innerArrowCallback,
      this.profileCallback,
      this.statisticCallback,
      this.activityCallback,
      this.facebookCallback,
      this.instagramCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    onTap: profileCallback,
                    title: Text(
                      'John Nick',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    trailing: GestureDetector(
                        onTap: innerArrowCallback,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.black54,
                        )),
                  ),
                  Container(
                    height: 0.5,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: statisticCallback,
                    title: Text("Statistics"),
                    leading: Icon(Icons.show_chart),
                  ),
                  ListTile(
                    onTap: activityCallback,
                    title: Text("Activity"),
                    leading: Icon(Icons.access_time),
                  ),
                  ListTile(
                    onTap: facebookCallback,
                    title: Text("Likes"),
                    leading: Icon(Icons.favorite),
                  ),
                  ListTile(
                    onTap: instagramCallback,
                    title: Text("Messages"),
                    leading: Icon(Icons.insert_comment),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  ListTile(
                    onTap: settingsCallback,
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
