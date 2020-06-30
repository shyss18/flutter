import 'package:flutter/material.dart';

const margin = 15.0;
const borderRadius = 10.0;

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget cardChild;

  ReusableCard({@required this.backgroundColor, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
