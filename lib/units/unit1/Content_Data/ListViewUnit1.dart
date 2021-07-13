import 'package:engg_chemistry_study_assist/units/unit1/Quiz_2.0/QuizInstructionScreen.dart';
import '../QuestionBanks/QuestionBankUnit1.dart';
import '../Numerical_Solver/NumericalSolver.dart';
import '../QuestionBanks/QuestionBankCard.dart';
import '../Flashcards/flashcards.dart';

class ListViewUnit1 {
  int id;
  String title;

  ListViewUnit1({required this.id, required this.title});
}

List content = [
  ListViewUnit1(id: 1, title: "Study Material"),
  ListViewUnit1(id: 3, title: "Question Bank"),
  ListViewUnit1(id: 4, title: "Quiz"),
  ListViewUnit1(id: 5, title: "FlashCards"),
  ListViewUnit1(id: 2, title: "Numerical Solver"),
];

List funcList = [
  QuestionBankUnit1(),
  QuestionBankCard(),
  QuizInstructionScreen(),
  FlashCard(),
  NumericalSolver(),
];
