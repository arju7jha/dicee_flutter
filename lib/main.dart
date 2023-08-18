
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(Dicee());

class Dicee extends StatelessWidget {
  const Dicee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: DicePage(),
    );
  }
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

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
  // void ChangeDice2() {
  //   setState(() {
  //     //LeftDiceNumber = Random().nextInt(6)+1; //here by using '+1' it will increase the value by adding 1 from 0 to 6
  //     RightDiceNumber = Random().nextInt(6)+1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DICE - ROLLER',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/dicee bg3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
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
        ),
      ),
    );
  }
}

