import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_pick.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const containerBackroundColor = Color(0xFFEA1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  backgroundColor: activeCardColor,
                  cardChild: GenderPickWidget(
                    text: 'MALE',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                ReusableCard(
                  backgroundColor: activeCardColor,
                  cardChild: GenderPickWidget(
                    text: 'FEMALE',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          ReusableCard(
            backgroundColor: activeCardColor,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  backgroundColor: activeCardColor,
                ),
                ReusableCard(
                  backgroundColor: activeCardColor,
                ),
              ],
            ),
          ),
          Container(
            color: containerBackroundColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
