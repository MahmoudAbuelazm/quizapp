import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/items/category_item.dart';

class quizscreen extends StatelessWidget {
  const quizscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "General Test",
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Image.asset(
                  "images/quizlogo.png",
                  width: MediaQuery.of(context).size.width / 5,
                )
              ],
            ),
            backgroundColor: Color(0xff7E57C2),
            actions: [],
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffF6F0F8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Question 1",
                              style: GoogleFonts.cookie(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "What is the capital of France ?",
                              style: GoogleFonts.cookie(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                "Choises is ",
                style: GoogleFonts.cookie(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Category(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Category(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Category(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Category(),
            ]),
          )),
    );
  }
}
