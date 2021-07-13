// import 'dart:async';

// import 'package:flutter/material.dart';

class QuizQuestionUnit3 {
  int id;
  String question;
  List options;
  int correctAns;

  QuizQuestionUnit3(
      {required this.id,
      required this.question,
      required this.options,
      required this.correctAns});
}

List questionListUnit3 = [
  QuizQuestionUnit3(
      id: 1,
      question: "The word ‘polymer’ meant for material made from ",
      options: ["A.	Single entity", "B.	Two entities", "Filtration", "Osmosis"],
      correctAns: 3),
  QuizQuestionUnit3(
      id: 2,
      question:
          "Water which does not form lather readily with soap is called as 	",
      options: ["	Soft water", "Pure water", "Impure Water", "Hard Water"],
      correctAns: 4),
  QuizQuestionUnit3(
      id: 3,
      question: "The colour of metal-EBT complex is______.",
      options: ["A.	Colourless", "Wine red", "Blue", "Yellow "],
      correctAns: 2),
  QuizQuestionUnit3(
      id: 4,
      question:
          "In alkalinity titration, second end point is called as 	end point.",
      options: ["Phenolpthalein", "EBT", "Methyl orange", "Fluoroscien "],
      correctAns: 3),
  QuizQuestionUnit3(
      id: 5,
      question: "Hardness determination is _________ type of titration.",
      options: ["Precipitation", "Redox", "Complexometric", "Acid-base "],
      correctAns: 3),
  QuizQuestionUnit3(
      id: 6,
      question: "Temporary hardness of water is due to_____",
      options: ["Chlorides", "Bicarbonates", "Nitrates", "Heavy metal salts "],
      correctAns: 2),
];

Set markedWrongUnit3 = {};
Set markedCorrectUnit3 = {};
Map markedWrongAnserUnit3 = {};
Map<int, int> tappedMapUnit3 = {};
Set skippedQues = {};
