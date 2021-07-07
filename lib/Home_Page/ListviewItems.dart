import '../units/unit1/unit1.dart';
import '../units/unit2/unit2.dart';
import '../units/unit3/unit3.dart';
import '../Flashcards/flashcards.dart';
// add relatives paths afterwards

class ListdisplayText {
  String func;
  String title, chapter;

  ListdisplayText(
      {required this.func, required this.title, required this.chapter});
}

List itemsList = [
  ListdisplayText(func: "UT1", title: "Unit-1", chapter: "Water Technology"),
  ListdisplayText(func: "UT2", title: "Unit-2", chapter: "Methods Of Analysis"),
  ListdisplayText(
      func: "UT3", title: "Unit-3", chapter: "Engineering Materials"),
  ListdisplayText(func: "UT4", title: "Unit-4", chapter: "Fuels"),
  ListdisplayText(func: "QUIZ", title: "Quizes", chapter: "10-15 Mcqs On Unit"),
  ListdisplayText(func: "CARDS", title: "Flashcards", chapter: ""),
  
];

List funcList = [Unit1(), Unit2(), Unit3(), Unit3(), Unit3(), FlashCard()];
