import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onChanged;

  RoundIconButton({@required this.iconData, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onChanged,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
