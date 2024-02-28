import 'package:flutter/material.dart';
import 'package:quizapp/quizquestions.dart';

class Quest extends StatefulWidget {
  const Quest({Key? key}) : super(key: key);

  @override
  State<Quest> createState() => _QuestState();
}

class _QuestState extends State<Quest> {
  int index = 0;
  int questno = 0;

  void nxtQuestion() {
      if (questno < questions.length) {                            // here questions is the list name
        index = index + 1;
        setState(() {});
      }
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1000,
              height: 150,
              child: Text(
                questions[3].quest,
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(50)),
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
            SizedBox(
              height: 40,
            ),
            Container(
              child: TextButton(
                child: Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () => {nxtQuestion()},
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
                  'No',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () => {nxtQuestion()},
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
                  'Close',
                  style: TextStyle(
                    color: Colors.black,
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
