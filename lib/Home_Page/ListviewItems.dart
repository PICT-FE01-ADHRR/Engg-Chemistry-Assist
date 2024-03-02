import '../units/unit1/unit1.dart';
import '../units/unit2/unit2.dart';
import '../units/unit3/unit3.dart';
import '../units/unit4/unit4.dart';
import '../units/unit5/unit5.dart';
import '../units/unit6/unit6.dart';

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
  ListdisplayText(
      func: "UT5", title: "Unit-5", chapter: "Spectroscopic Techniques"),
  ListdisplayText(func: "UT6", title: "Unit-6", chapter: "Corrosion Science"),
];

List funcList = [
  const Unit1(),
  const Unit2(),
  const Unit3(),
  const Unit4(),
  const Unit5(),
  const Unit6(),
];
