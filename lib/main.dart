import 'package:flutter/material.dart';

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
      body: Container(),
    );
  }
}
