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
  int leftDieNumber = 4;
  int rightDieNumber = 1;
  @override
  Widget build(BuildContext context) {
    rollDice() {
      setState(() {
        rightDieNumber = Random().nextInt(6) + 1;
        leftDieNumber = Random().nextInt(6) + 1;
      });
    }

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                child: Image.asset("images/dice$leftDieNumber.png"),
                onPressed: () {
                  rollDice();
                }),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDieNumber.png"),
              onPressed: () {
                rollDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
