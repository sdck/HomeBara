import 'package:barahome/Bloc/bloc.navigation/navigation_state.dart';
import 'package:barahome/Views/auth/authService.dart';
import 'package:barahome/Views/auth/login_view.dart';
import 'package:barahome/Views/auth/sign_up_form1_view.dart';
import 'package:barahome/Views/auth/sign_up_form_2_view.dart';
import 'package:barahome/Views/home_view.dart';
import 'package:barahome/Views/landing_page_view.dart';
import 'package:barahome/Views/side_bar_layout.dart';
import 'package:barahome/Views/side_drawer.dart';
import 'package:barahome/Views/splashscreen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:barahome/Views/sideBarPages/gouassou_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        title: 'Home Bara ',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: SplashScreen(),
        routes: {
          '/homeView': (context) => HomeView(),
          '/landingPageView': (context) => LandingPageView(),
          '/loginView': (context) => LoginView(),
          '/signUpView': (context) => SignUpPageView(),
          '/signUpView2': (context) => SignUpPage2View(),
          '/sideBarLayout': (context) => SideBarLayout(),
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();
    if (firebaseUser != null) {
      return HomeView();
    }
    return LoginView();
  }
}
