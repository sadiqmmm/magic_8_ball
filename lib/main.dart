import 'dart:math';

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ask Me Anything",
      home: MaginBall(),
    );
  }
}

class MaginBall extends StatefulWidget {
  MaginBall({Key key}) : super(key: key);

  @override
  _MaginBallState createState() => _MaginBallState();
}

class _MaginBallState extends State<MaginBall> {
  int magicBallNumber = 1;

  void changeMagicBallImage() {
    magicBallNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                child: Image.asset('images/ball$magicBallNumber.png'),
                onPressed: () {
                  setState(() {
                    changeMagicBallImage();
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
