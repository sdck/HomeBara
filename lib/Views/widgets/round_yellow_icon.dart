import 'package:barahome/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoundYellowIcon extends StatelessWidget {
  final String iconUrl;
  final onTap;
  const RoundYellowIcon({
    Key key,
    @required this.iconUrl,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: colorYellow, // button color
        child: InkWell(
          splashColor: Colors.orange, // inkwell color
          child: SizedBox(
            width: 64,
            height: 64,
            // child: Icon(Icons.pan_tool),
            child: SvgPicture.asset(
              iconUrl,
              height: 34,
              width: 34,
              fit: BoxFit.scaleDown,
            ),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
