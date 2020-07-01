import 'package:flutter/material.dart';
import '../constants.dart';

const iconSize = 80.0;
const spacing = 15.0;

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
          style: kFontStyle,
        ),
      ],
    );
  }
}
