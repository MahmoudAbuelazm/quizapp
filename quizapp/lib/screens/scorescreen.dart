import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class scorescreen extends StatelessWidget {
  const scorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Column(
          children : [
            Row(
              children: [
                Text("Hello ,",style : GoogleFonts.poppins(textStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold))),
                Text("Yasmin"),
              ],
            ),
            Row(
              children: [
                Text("Your Score is : r / r"),
              ],
            ),
            
          ]
        ),
      ),
    );
  }
}