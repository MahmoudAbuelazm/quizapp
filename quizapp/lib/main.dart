import 'package:flutter/material.dart';

void main() {
  runApp(quizApp());
}

class quizApp extends StatelessWidget {
  const quizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              // Background Image
              Image.asset(
                'images/download.png',
                fit: BoxFit.cover,
              ),
              // Overlay Image
              Positioned(
                top: 250,
                left: 75,
                child: Image.asset(
                  'images/quiz.png',
                  width: 190,
                  height: 200,
                ),
              ),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 420),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ITI Quiz App',
                            style: TextStyle(
                                fontFamily: "Pacifico",
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow)),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('We are creative , enjoy our app',
                          style: TextStyle(
                              fontFamily: "Pacifico",
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 175),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4CAF50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Container(
                          height: 40,
                          width: 260,
                          color: Color(0xff4CAF50),
                          child: Center(
                            child: Text(
                              'Start',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
