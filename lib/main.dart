import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: Text(
              'Ask me Anything',
            ),
          ),
          body: BallApp(),
        ),
      ),
    );

class BallApp extends StatefulWidget {
  // const BallApp({Key? key}) : super(key: key);

  @override
  State<BallApp> createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int BallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              BallNumber = Random().nextInt(5) + 1;
            });
          },
              child:Image.asset(
                'images/ball$BallNumber.png',
              ),
    ),

          ),
        ],
      ),
    );
  }
}
