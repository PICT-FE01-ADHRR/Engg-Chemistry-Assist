import '../QuestionBanks/QuestionBankCardUnit5.dart';
import '../QuestionBanks/QuestionBankUnit5.dart';
import '../Quiz_2.0/QuizInstructionScreen.dart';

class ListViewUnit3 {
  int id;
  String title;

  ListViewUnit3({required this.id, required this.title});
}

List content = [
  ListViewUnit3(id: 1, title: "Study Material"),
  // ListViewUnit3(id: 2, title: "Numerical Practice"),
  ListViewUnit3(id: 3, title: "Question Bank"),
  ListViewUnit3(id: 4, title: "Quiz"),
];

List funcList = [
  QuestionBankUnit5(),
  // NumericalSolver(),
  QuestionBankCardUnit5(),
  QuizInstructionScreen(),
];
