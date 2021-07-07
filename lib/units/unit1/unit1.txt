//Code Written by Rohan Doshi
import 'package:first_app/units/unit1/quiz.dart';
import 'package:flutter/material.dart';
import './studymaterial.dart';
import './QuestionBankUnit1.dart';
import './NumericalPractice.dart';
//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Unit1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit 1'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Study Material',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudyMaterialUnit1()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            height: 50,
            color: Colors.blue,
            child: ElevatedButton(
              child: Text(
                'Numerical Practice',
                style: TextStyle(fontSize: 20.0),
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumericalPractice()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Quiz',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizUnit1()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
            width: double.infinity,
            color: Colors.blue,
            height: 50,
            child: ElevatedButton(
              child: Text(
                'Question Bank',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionBankUnit1()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
