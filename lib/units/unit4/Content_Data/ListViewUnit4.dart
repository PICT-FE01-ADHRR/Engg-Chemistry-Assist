import 'package:engg_chemistry_study_assist/units/unit4/Numerical_Solver/NumericalSolver.dart';
import '../Quiz_2.0/QuizInstructionScreen.dart';
import '../QuestionBanks/QuestionBankCardUnit4.dart';
import '../QuestionBanks/QuestionBankUnit4.dart';

class ListViewUnit4 {
  int id;
  String title;

  ListViewUnit4({required this.id, required this.title});
}

List content = [
  ListViewUnit4(id: 1, title: "Study Material"),
  ListViewUnit4(id: 3, title: "Question Bank"),
  ListViewUnit4(id: 4, title: "Quiz"),
  ListViewUnit4(id: 2, title: "Numerical Solver"),
];

List funcList = [
  QuestionBankUnit4(),
  QuestionBankCardUnit4(),
  QuizInstructionScreen(),
  NumericalSolver(),
];
