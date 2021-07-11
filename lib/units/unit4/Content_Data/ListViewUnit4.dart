// import '../Quiz/quiz.Loading.dart';
// import '../Quiz/mainQuiz.dart';

import '../Quiz_2.0/QuizScreen1Unit4.dart';

class ListViewUnit4 {
  int id;
  String title;

  ListViewUnit4({required this.id, required this.title});
}

List content = [
  ListViewUnit4(id: 1, title: "Study Material"),
  // ListViewUnit4(id: 2, title: "Numerical Practice"),
  ListViewUnit4(id: 3, title: "Question Bank"),
  ListViewUnit4(id: 4, title: "Quiz"),
];

List funcList = [QuizScreen1(), QuizScreen1(), QuizScreen1(), QuizScreen1()];
