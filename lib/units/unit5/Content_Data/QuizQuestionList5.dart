// import 'dart:async';

// import 'package:flutter/material.dart';

class QuizQuestionUnit5 {
  int id;
  String question;
  List options;
  int correctAns;

  QuizQuestionUnit5(
      {required this.id,
      required this.question,
      required this.options,
      required this.correctAns});
}

List questionListUnit5 = [
  QuizQuestionUnit5(
      id: 1,
      question: "Is this unit5?",
      options: ["Zeolite process", "Ion Exchange", "Filtration", "Osmosis"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 2,
      question:
          "Water which does not form lather readily with soap is called as 	",
      options: ["	Soft water", "Pure water", "Impure Water", "Hard Water"],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 3,
      question: "The colour of metal-EBT complex is______.",
      options: ["A.	Colourless", "Wine red", "Blue", "Yellow "],
      correctAns: 2),
  QuizQuestionUnit5(
      id: 4,
      question:
          "In alkalinity titration, second end point is called as 	end point.",
      options: ["Phenolpthalein", "EBT", "Methyl orange", "Fluoroscien "],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 5,
      question: "Hardness determination is _________ type of titration.",
      options: ["Precipitation", "Redox", "Complexometric", "Acid-base "],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 6,
      question: "Temporary hardness of water is due to_____",
      options: ["Chlorides", "Bicarbonates", "Nitrates", "Heavy metal salts "],
      correctAns: 2),
];

Set markedWrongUnit5 = {};
Set markedCorrectUnit5 = {};
Map markedWrongAnserUnit5 = {};
Map<int, int> tappedMapUnit5 = {};
Set skippedQues = {};
