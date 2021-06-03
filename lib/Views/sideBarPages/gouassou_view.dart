import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Themes/themes.dart';

class GouassouView extends StatelessWidget {
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
            height: _height * 0.5,
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
                    SizedBox(width: _width * 0.15),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "GOUASSOU",
                        textAlign: TextAlign.center,
                        style: TextTitle1(colorWhite),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    width: _width * 0.9,
                    // height: 400.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 4,
                              offset: Offset(0, 3)),
                        ]),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: Column(
                              children: <Widget>[
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/3135/3135722.svg",
                                  width: 150,
                                ),
                                Text(
                                  "TOTAL DE POINTS",
                                  style: TextTitle2(Colors.grey[600]),
                                ),
                                Text(
                                  "650",
                                  style: TextDisplay(colorYellow),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Il vous reste 350 points avant un bara gratuit",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextHeadline(Colors.grey[600]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: _height * 0.3)
                Container(
                  width: _width * 0.9,
                  height: _height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Invites tes môgors",
                        style: TextTitle2(Colors.grey[600]),
                      ),
                      Text(
                        "et gagne 100 points par personnes inscrites !",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextHeadline(Colors.grey[600]),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 40.0,
                        width: 150.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: colorYellow2,
                          color: colorYellow2,
                          elevation: 3.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'INVITER',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
