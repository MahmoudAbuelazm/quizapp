import 'package:flutter/material.dart';

class quizscreen extends StatelessWidget {
  const quizscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(

        backgroundColor: Colors.purple,
        actions: [
          
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("1/10"),
              Text("General Test"),
              Image.asset("images/quizlogo.png")
            ],
            
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          
          children: [
          Container(
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Padding(
                padding: const EdgeInsets.only(right: 20 , left: 20 ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Question 1" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ]
                 ,
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("What is the capital of France ?" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ] 
                 ,
                ),
              ),
              
            ],
          ),
          ),  
        ]
        ),
      )
    ),
    );
  }
}
