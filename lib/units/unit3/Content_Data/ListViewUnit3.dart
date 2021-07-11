import '../Quiz_2.0/QuizScreen1Unit3.dart';

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
  QuizScreen1(),
  QuizScreen1(),
  QuizScreen1(),
];
