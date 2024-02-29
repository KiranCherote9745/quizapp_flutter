import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:2), ()  {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>Quest() ));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Quiz App'),
        centerTitle: true,
      ),


      body: Center(
          child: CircleAvatar(
        radius: 100,
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCiNg1rxaugA8XtUd2HnjLH4OA7auUNdPpQg&usqp=CAU'),
      )
      ),
    );
  }
}
