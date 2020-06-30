import 'package:flutter/material.dart';

const iconSize = 80.0;
const spacing = 15.0;

const fontSize = 18.0;
const fontColor = Color(0xFF8D8E98);

class GenderPickWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  GenderPickWidget({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: spacing,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: fontColor,
          ),
        ),
      ],
    );
  }
}
