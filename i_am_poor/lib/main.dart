import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent[300],
        title: Text('I Am Poor'),
      ),
      backgroundColor: Colors.cyanAccent[100],
      body: Center(
        child: Image(
          image: AssetImage('images/money.png'),
        ),
      ),
    ),
  ));
}
