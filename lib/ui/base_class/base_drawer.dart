import 'dart:async';

import 'package:drawer_demo/ui/menu/Activity.dart';
import 'package:drawer_demo/ui/menu/ClosedFriend.dart';
import 'package:drawer_demo/ui/menu/Favorite.dart';
import 'package:drawer_demo/ui/menu/NameTag.dart';
import 'package:drawer_demo/ui/menu/Messages.dart';
import 'package:drawer_demo/ui/menu/Statistic.dart';
import 'package:drawer_demo/ui/menu/SuggestedPeople.dart';
import 'package:drawer_demo/ui/base_class/right_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../menu/Dashboard.dart';
import '../../inner_drawer/inner_drawer.dart';
import '../menu/Likes.dart';
import '../menu/Profile.dart';
import '../menu/Settings.dart';
import 'left_drawer.dart';
import 'pages.dart';

class ExampleTwo extends StatefulWidget {
  ExampleTwo({Key key}) : super(key: key);

  @override
  _ExampleTwoState createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  final GlobalKey<InnerDrawerState> _innerDrawerKey =
      GlobalKey<InnerDrawerState>();

  StreamController _streamController = StreamController<Toolbar>();

  GlobalKey _keyRed = GlobalKey();
  double _width = 10;
  bool _swipe = false;
  InnerDrawerAnimation _animationType = InnerDrawerAnimation.static;
  bool _proportionalChildArea = true;
  double _offset = 0.4;
  double _scale = 0.9;
  double _borderRadius = 50;

  @override
  void initState() {
    _getwidthContainer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _streamController.close();
  }

  Color currentColor = Colors.white;

  Page _currentPage = Page.Dashboard;

  void _getwidthContainer() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final keyContext = _keyRed.currentContext;
      if (keyContext != null) {
        final RenderBox box = keyContext.findRenderObject();
        final size = box.size;
        setState(() {
          _width = size.width;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InnerDrawer(
        key: _innerDrawerKey,
        onTapClose: true,
        leftOffset: _offset,
        rightOffset: _offset,
        leftScale: _scale,
        rightScale: _scale,
        borderRadius: _borderRadius,
        swipe: _swipe,
        proportionalChildArea: _proportionalChildArea,
        colorTransition: currentColor,
        leftAnimationType: _animationType,
        rightAnimationType: _animationType,
        leftChild: LeftDrawer(
          dashboardCallback: () => displayCallBack(Page.Dashboard),
          nameTagCallback: () => displayCallBack(Page.NameTag),
          favoriteCallback: () => displayCallBack(Page.Favorite),
          suggestedPeopleCallback: () => displayCallBack(Page.SuggestPeople),
          closedFriendCallback: () => displayCallBack(Page.CloseFriends),
          profileCallback: () => displayCallBack(Page.Profile),
        ),
        rightChild: RightDrawer(
          settingsCallback: () => displayCallBack(Page.Settings),
          innerArrowCallback: () => _innerDrawerKey?.currentState?.toggle(),
          profileCallback: () => displayCallBack(Page.Profile),
          statisticCallback: () => displayCallBack(Page.Statistics),
          activityCallback: () => displayCallBack(Page.Activity),
          facebookCallback: () => displayCallBack(Page.Likes),
          instagramCallback: () => displayCallBack(Page.Messages),
        ),
        scaffold: Container(
          width: double.infinity,
          child: StreamBuilder<Toolbar>(
              stream: _streamController.stream,
              initialData:
                  Toolbar(title: "Dashboard", toolbarColor: Colors.indigo[300]),
              builder: (context, snapshot) {
                return Scaffold(
                  appBar: _appBar(snapshot.data ??
                      Toolbar(
                          title: "Dashboard",
                          toolbarColor: Colors.indigo[300])),
                  body: Material(
                    child: Stack(
                      children: <Widget>[
                        _switchWidget(_currentPage),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  Widget _appBar(Toolbar toolbar) {
    return AppBar(
      backgroundColor: toolbar.toolbarColor,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      actions: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black54,
            ),
            onPressed: () => _innerDrawerKey?.currentState
                ?.toggle(direction: InnerDrawerDirection.start),
          ),
        ),
        Expanded(
          child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left : 10.0),
              child: Text(
                toolbar.title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              )),
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/ic_profile.jpg',
                  image:
                      'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&h=350',
                  height: 35,
                  width: 35,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: new Icon(Icons.more_vert),
            color: Colors.black54,
            onPressed: () => _innerDrawerKey?.currentState
                ?.toggle(direction: InnerDrawerDirection.end),
          ),
        ),
      ],
    );
  }

  Widget _switchWidget(Page page) {
    switch (page) {
      case Page.Dashboard:
        _streamController
            .add(Toolbar(title: "Dashboard", toolbarColor: Colors.indigo[300]));
        return Dashboard();
        break;
      case Page.Profile:
        _streamController
            .add(Toolbar(title: "Profile", toolbarColor: Colors.orange[300]));
        return Profile();
        break;
      case Page.NameTag:
        _streamController
            .add(Toolbar(title: "NameTag", toolbarColor: Colors.red[300]));
        return NameTag();
        break;
      case Page.Favorite:
        _streamController
            .add(Toolbar(title: "Favorite", toolbarColor: Colors.green[300]));
        return Favorite();
        break;
      case Page.CloseFriends:
        _streamController.add(
            Toolbar(title: "CloseFriends", toolbarColor: Colors.blueGrey[300]));
        return ClosedFriend();
        break;
      case Page.SuggestPeople:
        _streamController.add(
            Toolbar(title: "SuggestPeople", toolbarColor: Colors.brown[300]));
        return SuggestedPeople();
        break;
      case Page.Statistics:
        _streamController
            .add(Toolbar(title: "Statistics", toolbarColor: Colors.cyan[300]));
        return Statistic();
        break;
      case Page.Activity:
        _streamController
            .add(Toolbar(title: "Activity", toolbarColor: Colors.lime[300]));
        return Activity();
        break;
      case Page.Likes:
        _streamController
            .add(Toolbar(title: "Likes", toolbarColor: Colors.lightGreen[300]));
        return Likes();
        break;
      case Page.Messages:
        _streamController
            .add(Toolbar(title: "Messages", toolbarColor: Colors.teal[300]));
        return Messages();
        break;
      case Page.Settings:
        _streamController
            .add(Toolbar(title: "Settings", toolbarColor: Colors.black45));
        return Settings();
        break;
    }
  }

  displayCallBack(Page page) {
    setState(() => _currentPage = page);
    _innerDrawerKey?.currentState?.toggle();
  }
}
