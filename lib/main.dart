import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  const MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  //const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  Random rand = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
     child: TextButton(
       onPressed: () {
         setState(() {
           ballNumber = rand.nextInt(5) + 1;
         });
       },
       child: Image.asset('images/ball$ballNumber.png'),
     ),
    );
  }
}

