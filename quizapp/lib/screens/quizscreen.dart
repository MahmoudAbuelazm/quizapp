import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data.dart';
import 'package:quizapp/screens/scorescreen.dart';

class QuizsSreen extends StatefulWidget {
  final int index;
  const QuizsSreen({super.key, required this.index});

  @override
  State<QuizsSreen> createState() => _QuizsSreenState();
}

class _QuizsSreenState extends State<QuizsSreen> {
  int _currentIndex = 0;
  int _score = 0;
  int currentQuestion = 0;

  void _answerQuestion(int score) {
    if (score == 1) {
      _score += 1;
    } else {
      _score += 0;
    }
    if (_currentIndex == datamodel[widget.index]["data"].length - 1) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => ScoreScreen(
                    totalScore: _score,
                    totalNumOfQuestion: datamodel[widget.index]["data"].length,
                  )),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(datamodel[widget.index]["name"]),
        leading: Center(
            child: Text(
          //number of questions in the category / number of questions answered
          " ${_currentIndex + 1}/ ${datamodel[widget.index]["data"].length}"
          
          
          ,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
        actions: [
          Image.asset(
            "images/quizlogo.png",
            width: MediaQuery.of(context).size.width / 5,
          )
        ],
        backgroundColor: datamodel[widget.index]["color"],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffF6F0F8)),
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
                            "Question ${_currentIndex + 1} :",
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
                            datamodel[widget.index]["data"][_currentIndex]
                                ["questions"],
                            style: GoogleFonts.cookie(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Choises is ",
              style:
                  GoogleFonts.cookie(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: datamodel[widget.index]["data"][_currentIndex]
                          ["answers"]
                      .length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: InkWell(
                        onTap: () {
                          _answerQuestion(datamodel[widget.index]["data"]
                              [_currentIndex]["answers"][index]["score"]);
                          if (_currentIndex <
                              datamodel[widget.index]["data"].length - 1) {
                            setState(() {
                              _currentIndex++;
                            });
                          }
                          print(_score);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: datamodel[widget.index]["color"]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                datamodel[widget.index]["data"][_currentIndex]
                                    ["answers"][index]["ans"],
                                style: GoogleFonts.cookie(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
