import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class scorescreen extends StatelessWidget {
  const scorescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello ,",
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold))),
              Text("Mahmoud",
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.purple,
                          fontSize: 50,
                          fontWeight: FontWeight.bold))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your Score is : 9/10",
                  style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Center(
                  child: Text("Reset Quiz",
                      style: GoogleFonts.lobster(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold)
                              )
                              ),
                )
                            ),
          )
        ]),
      ),
    );
  }
}
