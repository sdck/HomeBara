import 'package:barahome/Views/sideBarPages/activity_view.dart';
import 'package:barahome/Views/sideBarPages/gouassou_view.dart';
import 'package:barahome/Views/sideBarPages/profile_view.dart';
import 'package:barahome/Views/sideBarPages/setting_view.dart';
import 'package:barahome/Views/side_bar_layout.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        DrawerHeader(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 55, 15),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back_ios),
                      tooltip: 'Navigate Backward',
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SideBarLayout()));
                      },
                    ),
                  ),
                ],
              ),
              Text(
                'Menu Header',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Color(0xFF1A237E),
          ),
        ),
        ListTile(
          title: Text('Profile Info'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProfileView()));
          },
        ),
        ListTile(
          title: Text('Mon Activite'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ActivityView()));
          },
        ),
        ListTile(
          title: Text('Mon Bedou'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text('Gouassou'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => GouassouView()));
          },
        ),
        ListTile(
          title: Text('Parametres'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SettingView()));
          },
        ),
      ],
    ));
  }
}
