import 'package:flutter/material.dart';

/* ici on definis les themes des differents widgets qui seront beaucoup 
 utilisés dans l'app*/

// class MyBackgroundImage extends Image {
//   MyBackgroundImage(imageUrl, double width, double height)
//       : super(
//             image: AssetImage(imageUrl),
//             width: width,
//             height: height,
//             fit: BoxFit.cover,
//             colorBlendMode: BlendMode.multiply,
//             color: Colors.black26
//             // color: Color.fromRGBO(255, 87, 5, 100)
//             );
// }

// ----- COLORS
Color colorBlack = Colors.black;
Color colorWhite = Colors.white;
Color colorYellow = Color(0xfffcb900);
Color colorYellow2 = Color(0xfff0b000);
Color colorBlue = Color(0xff1D197D);
Color colorBlue2 = Color(0xff2521a3);
Color colorBlue3 = Color(0xff332de3);
Color colorGreen = Color(0xff0b9630);
Color colorGreen2 = Color(0xff0dbc3b);
Color colorGreen3 = Color(0xff10e348);


// ----- TEXT

//modal titles
class TextDisplay extends TextStyle {
  TextDisplay(color)
      : super(
          fontSize: 42.0,
          color: color,
          fontWeight: FontWeight.bold,
        );
}
//pages titles
class TextHeader extends TextStyle {
  TextHeader(color)
      : super(
          fontSize: 34.0,
          color: color,
          fontWeight: FontWeight.bold,
        );
}
//tabs, titles, forms
class TextTitle1 extends TextStyle {
  TextTitle1(color)
      : super(
          fontSize: 28.0,
          color: color,
          fontWeight: FontWeight.bold,
        );
}
//buttons, titles, forms
class TextTitle2 extends TextStyle {
  TextTitle2(color)
      : super(
          fontSize: 22.0,
          color: color,
          fontWeight: FontWeight.bold,
        );
}
//info, paragraphs
class TextHeadline extends TextStyle {
  TextHeadline(color)
      : super(
          fontSize: 20.0,
          color: color,
          // fontWeight: FontWeight.bold,
        );
}
//descriptions, body
class TextBody extends TextStyle {
  TextBody(color)
      : super(
          fontSize: 14.0,
          color: color,
          // fontWeight: FontWeight.bold,
        );
}
//footers, captions
class TextCaption extends TextStyle {
  TextCaption(color)
      : super(
          fontSize: 12.0,
          color: color,
          // fontWeight: FontWeight.bold,
        );
}

// ----- BUTTONS


// ----- FIELDS
// ----- CARDS
