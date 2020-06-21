import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() => changeImageNumber());
              },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() => changeImageNumber());
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changeImageNumber() {
    leftImageNumber = Random().nextInt(6) + 1;
    rightImageNumber = Random().nextInt(6) + 1;
  }
}
