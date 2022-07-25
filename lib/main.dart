import 'package:flutter/material.dart';
import 'package:quizzles/screens/starting_screen.dart';

void main() {
  runApp(QuizzlesApp());
}

class QuizzlesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartingScreen(),
    );
  }
}
