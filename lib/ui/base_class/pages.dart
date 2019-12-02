import 'package:flutter/material.dart';

enum Page {
  Profile,
  Dashboard,
  NameTag,
  Favorite,
  CloseFriends,
  SuggestPeople,
  Statistics,
  Activity,
  Likes,
  Messages,
  Settings,
}

class Toolbar {

  Toolbar({
    this.title, this.toolbarColor
  });

  String title;

  Color toolbarColor;
}