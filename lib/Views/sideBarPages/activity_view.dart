import 'package:flutter/material.dart';

import '../../Themes/themes.dart';

class ActivityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Container(
            color: colorBlue,
            width: _width,
            height: _height * 0.2,
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: colorWhite,
                          size: 33.0,
                          semanticLabel: 'revenir',
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    SizedBox(width: _width * 0.10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MON ACTIVITE",
                        textAlign: TextAlign.center,
                        style: TextTitle1(colorWhite),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: _width * 0.9,
                        height: 150,
                        decoration: BoxDecoration(
                          color: colorBlue,
                          border: Border.all(
                            width: 3.0,
                            color: Colors.white,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Menusierie",
                                  style: TextHeadline(colorWhite)),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Text("Numero de Commande",
                                      style: TextHeadline(colorWhite)),
                                  SizedBox(width: 30),
                                  Text("0024570",
                                      style: TextHeadline(colorWhite)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Text("Travail",
                                      style: TextCaption(colorWhite)),
                                  SizedBox(width: 170),
                                  Text("Date", style: TextCaption(colorWhite)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Text("Reparation Portes",
                                      style: TextHeadline(colorWhite)),
                                  SizedBox(width: 45),
                                  Text("15/12/2020",
                                      style: TextHeadline(colorWhite)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: _width * 0.9,
                        height: 150,
                        decoration: BoxDecoration(
                          color: colorBlue,
                          border: Border.all(
                            width: 3.0,
                            color: Colors.white,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Menusierie",
                                  style: TextHeadline(colorWhite)),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Text("Numero de Commande",
                                      style: TextHeadline(colorWhite)),
                                  SizedBox(width: 30),
                                  Text("0024570",
                                      style: TextHeadline(colorWhite)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Text("Travail",
                                      style: TextCaption(colorWhite)),
                                  SizedBox(width: 170),
                                  Text("Date", style: TextCaption(colorWhite)),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  Text("Reparation Portes",
                                      style: TextHeadline(colorWhite)),
                                  SizedBox(width: 45),
                                  Text("15/12/2020",
                                      style: TextHeadline(colorWhite)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: _height * 0.3)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
