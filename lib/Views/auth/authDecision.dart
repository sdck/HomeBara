
import 'package:barahome/Views/auth/googleAuth.dart';
import 'package:barahome/Views/home_view.dart';
import 'package:barahome/Views/side_bar_layout.dart';
import 'package:barahome/Views/landing_page_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthDecision extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
            create: (context) => GoogleSignInProvider(),
            child: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                final provider = Provider.of<GoogleSignInProvider>(context);
                if (provider.isSigningIn) {
                  return buildLoading();
                } else if (snapshot.hasData) {
                  return SideBarLayout();
                } else {
                  return LandingPageView();
                }
              },
            )
            ),
      );
  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );
}
