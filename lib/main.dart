import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int bnum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: Center(
        child: TextButton(
          child: Image.asset('images/ball$bnum.png'),
          onPressed: () {
            setState(() {
              bnum = Random().nextInt(5) + 1;
            });
          },
        ),
      ),
    );
  }
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: Text('Ask Me Something'),
        ),
        body: Ball());
  }
}
