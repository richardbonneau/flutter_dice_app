import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDieNumber = 4;
    int rightDieNumber = 1;
    
    return Center(
      child: Row(
        children: <Widget>[
          Expanded( child: FlatButton(
              child: Image.asset("images/dice$leftDieNumber.png"),
              onPressed:(){print("left btn");}),
          ),
          Expanded(child: FlatButton(
              child: Image.asset("images/dice$rightDieNumber.png"),
              onPressed: (){print("right btn");},),
          ),

        ],
      ),
    );
  }
}

//class DicePage extends StatefulWidget {
//  @override
//  _DicePageState createState() => _DicePageState();
//}
//
//class _DicePageState extends State<DicePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}

