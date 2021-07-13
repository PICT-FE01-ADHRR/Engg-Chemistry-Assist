//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import '../Quiz_2.0/QuizScreen1.dart';

class QuizInstructionScreen extends StatefulWidget {
  @override
  _QuizInstructionScreenState createState() => _QuizInstructionScreenState();
}

class _QuizInstructionScreenState extends State<QuizInstructionScreen> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Unit 1'),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: Container(
        // color: Color.fromRGBO(1, 84, 154, 1),
        color: Colors.black,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: new EdgeInsets.all(5),
              margin: new EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF0a1931),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
              ),
              child: Text(
                "This is mcq-based quiz containing 25 questions. Each question has a 4 options out of which only 1 is correct. ALL THE BEST!!",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.01,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                // color: Colors.green,
                color: Color(0xFF0a1931),
              ),
              child: Text(
                "ALL THE QUESTIONS ARE COMPULSORY !",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Container(
              child: Image.asset(
                "assets/images/quiz_bulb.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () => {
                print("fd"),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizScreen1())),
              },
              child: Container(
                alignment: Alignment.center,
                width: deviceWidth * 0.5,
                height: deviceHeight * 0.075,
                margin: new EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFFc471ed),
                      Color(0xFFf64f59)
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                ),
                child: Text(
                  "Start Quiz",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
