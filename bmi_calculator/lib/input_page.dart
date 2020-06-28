import 'package:flutter/material.dart';

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
                  backgroundColor: Color(0xFF1D1E33),
                ),
                ReusableCard(
                  backgroundColor: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
          ReusableCard(
            backgroundColor: Color(0xFF1D1E33),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  backgroundColor: Color(0xFF1D1E33),
                ),
                ReusableCard(
                  backgroundColor: Color(0xFF1D1E33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color backgroundColor;

  ReusableCard({@required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
