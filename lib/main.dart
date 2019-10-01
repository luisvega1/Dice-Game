import 'dart:math';
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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumer = 1;
  int rightDiceNumer = 2;
  @override
  void random() {
    leftDiceNumer = Random().nextInt(6) + 1;
    rightDiceNumer = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    random();
                  });
                  print('left button got pressed.');
                },
                child: Image.asset('images/dice$leftDiceNumer.png'),
              )
          ),
          Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    random();
                  });
                  print('Rigth button got pressed.');
                },
                child: Image.asset('images/dice$rightDiceNumer.png'),
              )
          ),
        ],
      ),
    );
  }
}

