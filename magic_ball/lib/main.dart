import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Ask Me Anything'),
        ),
        body: MagicBallPage(),
        backgroundColor: Colors.blue.shade300,
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballImageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              ballImageNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballImageNumber.png')),
    );
  }
}
