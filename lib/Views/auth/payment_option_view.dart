import 'package:barahome/Views/auth/credit_card/choice.dart';
import 'package:barahome/Views/side_bar_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class PaymentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: _height * 0.15,
              width: _width,
              color: Colors.indigo[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
                    child: IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back_ios),
                      tooltip: 'Navigate Backward',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Méthode de Paiement",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(40, 40, 40, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChoiceOptions()));
                  },
                  child: Align(
                  alignment: Alignment.center,
                  child: Icon(
                    FlutterIcons.payment_mdi,
                    size: 55,
                    color: Colors.indigo[900],

                  ),
                  ),
                ), 
              ),
              Align(
                alignment: Alignment.center,
              child: Text(
                'Carte de Crédit',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  fontSize: 17,
                ),
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 40, 40, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SideBarLayout()));
                  },
                  child: SvgPicture.asset(
                    'assets/images/mobile-banking.svg',
                    color: Colors.indigo[900],
                    height: 45,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
              child: Text(
                'Mobile Money',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  fontSize: 17,
                ),
              ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(40, 40, 40, 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SideBarLayout()));
                  },
                  child:
                  Align(
                  alignment: Alignment.center,
                  child:  Icon(
                    FlutterIcons.contactless_payment_mco,
                    size: 45,
                    color: Colors.indigo[900],
                  ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                "Apple ou Google Pay",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                  fontSize: 17,
                  
                ),
              ),
              ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
                  child: IconButton(
                    color: Colors.indigo[900],
                    icon: Icon(Icons.arrow_forward_ios),
                    tooltip: 'Navigate Foward',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SideBarLayout()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
        ],
    ),
    );
  }
}
