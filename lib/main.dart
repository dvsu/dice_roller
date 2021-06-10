import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  Color mainColor = Color(0xffa7d129);
  //Color subColor = Color(0xff3e432e);
  Color textColor = Color(0xff000000);
  //Color subTextColor = Color(0xff616f39);

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Dice Roller',
            style: TextStyle(
              color: textColor,
            ),),
            backgroundColor: mainColor,
          ),
          body: DicePage(),
        ),
      )
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 5;

  void randomizeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              style: ButtonStyle(
              ),
              onPressed: (){
                  randomizeDiceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              onPressed: (){
                  randomizeDiceNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
