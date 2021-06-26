import 'package:barahome/Views/auth/googleAuth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';

class LandingPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              width: _width,
              height: _height * 0.6,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
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
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/logo/screensImnnjjages.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.indigo[900], BlendMode.color))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Bienvenue sur HomeBARA !",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(11),
            height: 43,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.indigo[900],
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/loginView');
                },
                child: Center(
                  child: Text(
                    "Connectez-Vous",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Vous n'avez pas de compte ? ",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signUpView');
                },
                child: Text(
                  "Inscrivez-Vous",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900]),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Connectez-vous via ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      iconSize: 80,
                      color: Colors.indigo[900],
                      onPressed: () {
                        final provider = Provider.of<GoogleSignInProvider>(
                            context,
                            listen: false);
                      },
                      icon: ImageIcon(
                        AssetImage(
                          'assets/images/google-icon.png',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.indigo[900],
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
