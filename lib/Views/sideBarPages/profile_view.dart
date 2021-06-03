import 'package:flutter/material.dart';

import '../../Themes/themes.dart';

class ProfileView extends StatelessWidget {
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
                    SizedBox(width: _width * 0.12),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 8.0, 8.0, 8.0),
                      child: Text(
                        "MON PROFIL",
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
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage: NetworkImage(
                                  "https://www.presse-citron.net/wordpress_prod/wp-content/uploads/2018/07/apple-jony-ive-memoji.png"),
                            ),
                          ),
                          //name
                          Text(
                            "Atote Julien",
                            style: TextTitle2(colorBlack),
                          ),
                          //email
                          Text(
                            "Atotejulien@gmail.com",
                            style: TextTitle2(colorBlack),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //bouton modifier
                          InkWell(
                            onTap: () {
                              // Navigator.of(context).pushNamed('/modifyEmailAdress');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Modifier',
                                  style: TextTitle2(colorYellow),
                                ),
                                Icon(
                                  Icons.mode_edit,
                                  color: colorYellow,
                                  size: 33.0,
                                  semanticLabel: 'modifier',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
