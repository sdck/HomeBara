import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.pushNamed(context, '/landingPageView');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //ici on recupere les tailles de l'ecran (largeur, longueur)
    // final _width = MediaQuery.of(context).size.width;
    // final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                const Color(0xFF283593),
                const Color(0xFF1A237E)
              ], //le gradient: bottom left to indigo 800 a indigo 900 top right
              tileMode: TileMode.clamp,
            ),
          )),
          //Logo
          Center(
            child: Image.asset(
              "assets/images/screensImnnjjages.png",
            ),
          ),
        ],
      ),
    );
  }
}
