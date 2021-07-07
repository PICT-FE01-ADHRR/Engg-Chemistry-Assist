//Code Written by Rohan Doshi
// import '../unit1/Quiz/mainQuiz.dart';
import 'package:flutter/material.dart';

class QuizUnit1 extends StatefulWidget {
  @override
  _QuizUnit1State createState() => _QuizUnit1State();
}

class _QuizUnit1State extends State<QuizUnit1> {
  @override
  Widget build(BuildContext context) {
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
                color: Color(0xFF0a1931),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
              ),
              child: Text(
                "This is mcq-based quiz containing 10 questions. Each question has a 4 options out of which only 1 is correct. You only have one minute to attempt each question. ALL THE BEST!!",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
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
            Container(
              width: double.infinity,
              height: 40,
              margin: new EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ElevatedButton(
                child: Text(
                  "Start Quiz",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => QuizCode()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
