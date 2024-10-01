import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const Ball8Page(),
      ),
    ),
  );
}

class Ball8Page extends StatefulWidget {
  const Ball8Page({super.key});

  @override
  State<Ball8Page> createState() => _Ball8State();
}

class _Ball8State extends State<Ball8Page> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        }, 
        child: Image.asset('assets/images/ball$ballNumber.png'),
      ),
    );
  }
}