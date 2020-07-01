import 'package:flutter/material.dart';
import '../constants.dart';

const borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget cardChild;
  final Function onTap;

  ReusableCard({@required this.backgroundColor, this.cardChild, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kMargin),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
