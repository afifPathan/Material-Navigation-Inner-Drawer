import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  final GestureTapCallback profileCallback;
  final GestureTapCallback dashboardCallback;
  final GestureTapCallback nameTagCallback;
  final GestureTapCallback favoriteCallback;
  final GestureTapCallback closedFriendCallback;
  final GestureTapCallback suggestedPeopleCallback;

  const LeftDrawer(
      {Key key,
      @required this.dashboardCallback,
      this.nameTagCallback,
      this.favoriteCallback,
      this.suggestedPeopleCallback,
      this.closedFriendCallback,
      this.profileCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: profileCallback,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: ClipOval(
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/ic_profile.jpg',
                        image:
                            'https://images.pexels.com/photos/736716/pexels-photo-736716.jpeg?auto=compress&cs=tinysrgb&h=350',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "John Nick",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  )
                ],
                //mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: dashboardCallback,
              title: Text(
                "Dashboard",
                style: TextStyle(fontSize: 14),
              ),
              leading: Icon(
                Icons.dashboard,
                size: 22,
              ),
            ),
            ListTile(
              onTap: nameTagCallback,
              title: Text(
                "Nametag",
                style: TextStyle(fontSize: 14),
              ),
              leading: Icon(
                Icons.rounded_corner,
                size: 22,
              ),
            ),
            ListTile(
              onTap: favoriteCallback,
              title: Text(
                "Favorite",
                style: TextStyle(fontSize: 14),
              ),
              leading: Icon(
                Icons.bookmark_border,
                size: 22,
              ),
            ),
            ListTile(
              onTap: closedFriendCallback,
              title: Text(
                "Close Friends",
                style: TextStyle(fontSize: 14),
              ),
              leading: Icon(
                Icons.list,
                size: 22,
              ),
            ),
            ListTile(
              onTap: suggestedPeopleCallback,
              title: Text(
                "Suggested People",
                style: TextStyle(fontSize: 14),
              ),
              leading: Icon(
                Icons.person_add,
                size: 22,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: null,
              title: Text(
                " LogOut",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              leading: Icon(
                Icons.all_out,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
