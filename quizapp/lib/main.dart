import 'package:flutter/material.dart';
import 'package:quizapp/screens/openningscreen.dart';

void main() {
  runApp(quizApp());
}

class quizApp extends StatelessWidget {
  const quizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: openningscreen(),
    );
  }
}
