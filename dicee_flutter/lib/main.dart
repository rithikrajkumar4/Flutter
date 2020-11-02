import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
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
  int left_dice_no = 1;
  int right_dice_no = 1;

  void changeState()
  {
    setState(() {
      left_dice_no = Random().nextInt(6)+1;
      right_dice_no = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
        return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeState();
                },
                onLongPress: (){
                  setState(() {
                    left_dice_no = 6;
                  });
                },
                child: Image.asset('images/dice$left_dice_no.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeState();
                },
                onLongPress: (){
                  setState(() {
                    right_dice_no = 1;
                  });
                },
                child: Image.asset('images/dice$right_dice_no.png'),

              ),
            ),
          ],
        ),
      ),
    );
  }
}