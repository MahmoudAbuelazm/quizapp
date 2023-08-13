import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/screens/scorescreen.dart';

class Category extends StatelessWidget {
  Category({ this.onTap,});
  
  Function()? onTap;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
       onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return scorescreen();
              }));
      },
      child: Container(decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffF6F0F8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "paris",
                      style: GoogleFonts.cookie(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ],
                ), 
    
              ),
    );
  }
}