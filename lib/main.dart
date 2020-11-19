import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text(
              "DICE",
              style: TextStyle(
                fontSize: 30.0,
              ),
            )),
        body: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceNumber=3;

  void roll(){
    setState(() {
      diceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              "Tap the dice to roll",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Image(
                  image: AssetImage('images/dice$diceNumber.png'),
                ),
              ),
              onPressed: (){
                roll();
              },
            ),
          ),
        ],
      ),
    );
  }
}
