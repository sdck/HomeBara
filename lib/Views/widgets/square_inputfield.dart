import 'package:barahome/Themes/themes.dart';
import 'package:barahome/Views/widgets/textfield_container.dart';
import 'package:flutter/material.dart';

class SquareInputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const SquareInputField({
    Key key,
    @required this.icon,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        // onChanged: onChanged,
        cursorColor: colorBlue,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
