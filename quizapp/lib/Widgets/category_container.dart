import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data.dart';
import 'package:quizapp/screens/quizscreen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;

  const CategoryContainer({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizsSreen(index: index),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: datamodel[index]["color"],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              datamodel[index]["name"],
              style: GoogleFonts.actor(
                  fontSize: 35, color: const Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}
