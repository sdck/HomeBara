import 'package:flutter/material.dart';

import '../../Themes/themes.dart';

class SettingView extends StatelessWidget {
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
                        "PARAMETRES",
                        textAlign: TextAlign.center,
                        style: TextTitle1(colorWhite),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
