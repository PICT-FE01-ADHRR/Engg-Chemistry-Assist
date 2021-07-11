// import 'package:first_app/units/unit1/quiz.dart';
// import 'package:flutter/material.dart';
import '../QuestionBanks/QuestionBankCardUnit2.dart';
import '../Quiz_2.0/QuizScreen1Unit2.dart';
import '../QuestionBanks/QuestionBankUnit2.dart';
// import '../Numerical_Solver/NumericalSolver.dart';
class ListViewUnit2 {
  int id;
  String title;

  ListViewUnit2({required this.id, required this.title});
}

List content = [
  ListViewUnit2(id: 1, title: "Study Material"),
  // ListViewUnit2(id: 2, title: "Numerical Solver"),
  ListViewUnit2(id: 3, title: "Question Bank"),
  ListViewUnit2(id: 4, title: "Quiz"),
];

List funcList = [
  QuestionBankUnit2(),
  // NumericalSolver(),
  QuestionBankCardUnit2(),
  QuizScreen1(),
];
