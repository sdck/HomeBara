import 'package:barahome/Bloc/bloc.navigation/navigation_bloc.dart';
import 'package:barahome/Bloc/bloc.navigation/navigation_state.dart';
import 'package:barahome/Themes/themes.dart';
import 'package:barahome/Views/sideBarPages/activity_view.dart';
import 'package:barahome/Views/sideBarPages/contact_view.dart';
import 'package:barahome/Views/sideBarPages/gouassou_view.dart';
import 'package:barahome/Views/sideBarPages/profile_view.dart';
import 'package:barahome/Views/sideBarPages/setting_view.dart';
import 'package:barahome/Views/side_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_view.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorWhite,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SideDrawer()));
        },
        child: Icon(
          Icons.menu,
        ),
        shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF1A237E),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(30)),
      ),
      body: BlocProvider<NavigationBloc>(
          create: (context) => NavigationBloc(InitialState()),
          child: Stack(
            children: <Widget>[
              BlocBuilder<NavigationBloc, NavigationStates>(
                  builder: (context, navigationState) {
                if (navigationState is ActivityState) {
                  return ActivityView();
                } else if (navigationState is ContactState) {
                  return ContactView();
                } else if (navigationState is GouassouState) {
                  return GouassouView();
                } else if (navigationState is ProfileState) {
                  return ProfileView();
                } else if (navigationState is SettingState) {
                  return SettingView();
                } else {
                  return HomeView();
                }

                // ignore: dead_code
                Positioned(
                  left: 15.0,
                  top: height * 0.1,
                  child: Container(
                    width: 50,
                    height: 50,
                    // color: Colors.white,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Material(
                      color: colorWhite,
                      child: InkWell(
                        splashColor: Color(0xFF1A237E),
                        child: Icon(
                          Icons.menu,
                        ),
                      ),
                    ),
                  ),
                );
              })
            ],
          )),
    );
  }
}
