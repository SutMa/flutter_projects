import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
      MaterialApp(
        home: BallPage(),
      )
      );

}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  void updateBall(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
              child: TextButton(
                onPressed: () {
                  updateBall();
                  print(ballNumber);
                },
                  child: Image.asset('images/ball$ballNumber.png'),
              ),
          ),
      ],
    );
  }
}