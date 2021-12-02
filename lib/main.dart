import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text("Ask Me Anything"),
          centerTitle: true,
        ),
        body: const MaginEightBall(),
      ),
    );
  }
}

class MaginEightBall extends StatefulWidget {
  const MaginEightBall({Key? key}) : super(key: key);

  @override
  _MaginEightBallState createState() => _MaginEightBallState();
}

class _MaginEightBallState extends State<MaginEightBall> {
  int ballNumber = 1;
  void askMe() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            askMe();
          });
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
