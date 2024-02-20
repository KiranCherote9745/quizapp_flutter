import 'package:flutter/material.dart';

class Quest extends StatefulWidget {
  const Quest({Key? key}) : super(key: key);

  @override
  State<Quest> createState() => _QuestState();
}

class _QuestState extends State<Quest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is __________'),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0)),
            ColoredBox(color: Colors.amberAccent),


            SizedBox(height: 40,),


            Container(
              child:TextButton(
                    child: Text('Yes',
                      style: TextStyle(
                      color: Colors.black,
                    ),
                    ),

                  onPressed:null ,
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color:Colors.white)),
                ),
            ),

            SizedBox(height: 15,),

            Container(
              child:TextButton(
                child: Text('No',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),

                onPressed:null ,
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color:Colors.white)),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              child:TextButton(
                child: Text('Close',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),

                onPressed:null ,
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.white,
                    textStyle: TextStyle(color:Colors.white)),
              ),
            ),
          ],

        ),
      ),
    );
  }
}

