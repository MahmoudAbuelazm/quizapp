import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data.dart';
import 'package:quizapp/screens/scorescreen.dart';

class Category extends StatefulWidget {
  
  Function()? onTap;
  int totalScore = 0;
  int index;
  Map categoryMap = datamodel[0];
  Category(
      {super.key,
      required this.index,
      this.onTap,
      required this.totalScore,
      });

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.index < widget.categoryMap["data"].length - 1) {
          setState(() {
            widget.index++;
            widget.categoryMap = datamodel[widget.index];
          });
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return ScoreScreen(
              totalScore: widget.totalScore,
              totalNumOfQuestion: widget.index + 1,
            );
          }));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: datamodel[widget.index]["color"]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.categoryMap["data"][widget.index]["questions"]}",
                style: GoogleFonts.cookie(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
