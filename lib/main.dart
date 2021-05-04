import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
    backgroundColor: Colors.red.shade700,
    appBar: AppBar(
      title: Text('Dicee'),
      centerTitle: true,
      backgroundColor: Colors.red.shade700,
    ),
    body: DiceePage(),
  )));
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftSideDiceNumber = 1;
  int rightSideDiceNumber = 1;

  void changeBothDice() {
    rightSideDiceNumber = Random().nextInt(6) + 1; // 1-6
    leftSideDiceNumber = Random().nextInt(6) + 1; // 1-6
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeBothDice();
                });
              },
              child: Image.asset('images/dice$leftSideDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeBothDice();
                });
              },
              child: Image.asset('images/dice$rightSideDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
