import 'package:flutter/material.dart';
import 'package:quizapp/quizquestions.dart';

class Quest extends StatefulWidget {
  const Quest({Key? key}) : super(key: key);

  @override
  State<Quest> createState() => _QuestState();
}

class _QuestState extends State<Quest> {

  List questions = [
    Quiz(quest: 'anyone have nothing', answer: false),
    Quiz(quest: 'this is anyone', answer: false),
    Quiz(quest: 'none is everything', answer: true),
    Quiz(quest: 'this is nothing but nothing is everything', answer: true),
    Quiz(quest: 'this is anyone of the nothing', answer: false),
    Quiz(quest: 'this is nothing', answer: false),
    Quiz(quest: 'this is anyone', answer: false),
    Quiz(quest: 'this is nothing but true is it true', answer: true),
    Quiz(quest: 'this is nothng but different', answer: true),
    Quiz(quest: 'this is different', answer: false),
  ];
  int questno = 0;
  String result='';
  // increment funtion
  void nxtQuestion() {
    if (questno < questions.length) {                            // here questions is the list name

      setState(() {
        questno = questno + 1;
      });

    }
  }

  // second function
  void option(bool answer){
    if(questions[questno].answer==answer) {
      result = 'correct';
    }
      else{
        result='false';
      }
    print(answer);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1000,
              height: 150,
              child: Text(
                questions[questno].quest,
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 60,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(20),left:Radius.circular(10)),
                border: Border.all(),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
            ),

            // line break
            SizedBox(
              height: 40,
            ),

            // result container
            Container(
              // result is being called for printing
              child: Text(result,

                  style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
              ),

            ),

            SizedBox(
              height: 40,
            ),

            Container(
              child: TextButton(
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    nxtQuestion();
                    option(true);
                  });
                },
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white)),
              ),
            ),


            SizedBox(
              height: 15,
            ),


            Container(
              child: TextButton(
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),

                onPressed: () {
                  setState(() {
                    nxtQuestion();
                    option(false);
                  });
                },

                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 20,
            ),


            Container(
              child: TextButton(
                child: Text(
                  'Reset',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                onPressed: null,
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
