//Code Written by Rohan Doshi
import 'package:engg_chemistry_study_assist/units/unit6/Quiz_2.0/QuizScreen1Unit6.dart';
import 'package:flutter/material.dart';

class QuizInstructionScreen extends StatefulWidget {
  const QuizInstructionScreen({super.key});

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
        title: const Text('Quiz Unit 6'),
        backgroundColor: const Color(0xFF0a1931),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xFF0a1931),
                border: Border.all(
                  color: Colors.black,
                  width: 5,
                ),
              ),
              child: Text(
                "This is mcq-based quiz containing 25 questions. Each question has a 4 options out of which only 1 is correct. ALL THE BEST!!",
                style: TextStyle(
                    fontSize: deviceHeight * 0.025, color: Colors.white),
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
                color: const Color(0xFF0a1931),
              ),
              child: Text(
                "ALL THE QUESTIONS ARE COMPULSORY !",
                style: TextStyle(
                    fontSize: deviceHeight * 0.025,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
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
              height: deviceHeight * 0.05,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizScreen1())),
              child: Container(
                alignment: Alignment.center,
                width: deviceWidth * 0.5,
                height: deviceHeight * 0.075,
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  gradient: const LinearGradient(
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
                  style: TextStyle(
                      fontSize: deviceHeight * 0.03, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
