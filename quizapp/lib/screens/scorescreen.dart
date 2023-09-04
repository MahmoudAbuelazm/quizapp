import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data.dart';
import 'package:quizapp/screens/openningscreen.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuestion;
  ScoreScreen(
      {super.key, required this.totalScore, required this.totalNumOfQuestion});
  StreamController? myStream;
  Timer? myTimer;
  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ,",
                style: GoogleFonts.lobster(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold))),
            Text(
              usernamecontroller.text,
              style: GoogleFonts.lobster(
                textStyle: const TextStyle(
                  color: Colors.purple,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Score is : ${widget.totalScore} / ${widget.totalNumOfQuestion}",
              style: GoogleFonts.lobster(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 6,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Openningscreen()),
                (route) => false,
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Center(
              child: Text(
                "Reset Quiz",
                style: GoogleFonts.lobster(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  
} 
