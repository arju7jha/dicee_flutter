import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(
          title: Text('DICE-ROLLER'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void ChangeDice() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6)+1; //here by using '+1' it will increase the value by adding 1 from 0 to 6
      RightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[

          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
