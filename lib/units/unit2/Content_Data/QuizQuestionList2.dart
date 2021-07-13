// import 'dart:async';

// import 'package:flutter/material.dart';

class QuizQuestionUnit2 {
  int id;
  String question;
  List options;
  int correctAns;

  QuizQuestionUnit2(
      {required this.id,
      required this.question,
      required this.options,
      required this.correctAns});
}

List questionListUnit2 = [
  QuizQuestionUnit2(
      id: 1,
      question: "On increasing the temperature, the conductance of a solution",
      options: ["Decreases", "Increases", "Remains constant", "None of above"],
      correctAns: 2),
  QuizQuestionUnit2(
      id: 2,
      question: "Which of the following is a buffer solution",
      options: [
        "	H2SO4 + CuSO4",
        "	CH3COOH + CH3COONH4",
        "NaCl + NaOH",
        "CH3COONa + CH3COOH"
      ],
      correctAns: 4),
  QuizQuestionUnit2(
      id: 3,
      question:
          "pH-metric Titration of SASB used to determine the unknown concentration of",
      options: ["Strong Acid", "Weak Acid", "Salt ", "None of above"],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 4,
      question: "Electrodes used in conductivity cell are ",
      options: ["calomel", "platinum", "Ion selective ", "None of the above"],
      correctAns: 2),
  QuizQuestionUnit2(
      id: 5,
      question: "pH-metry and conductometry are ",
      options: [
        "electroanalytical techniques",
        "thermal analysis",
        "gravimetric techniques ",
        "volumetric analysis"
      ],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 6,
      question:
          "The composition of glass membrane in glass electrode cannot have which of the following ? ",
      options: [
        "Sodium silicate",
        "Calcium silicate ",
        "Lithium silicate ",
        "Barium silicate"
      ],
      correctAns: 4),
  QuizQuestionUnit2(
      id: 7,
      question:
          "Indicator electrode used in pH meter for the determination of Hydrogen ions ",
      options: [
        "Calomel electrode",
        "Fluoride electrode",
        "Glass electrode",
        "Conductivity cell"
      ],
      correctAns: 3),
  QuizQuestionUnit2(
      id: 8,
      question: "Solid state electrode is used for determination of",
      options: [
        "amino acids",
        "slowly responding anions",
        "halides ",
        "cations of alkali metals"
      ],
      correctAns: 3),
  QuizQuestionUnit2(
      id: 9,
      question:
          "Which of the following can be used as internal reference electrolyte in case of fluoride selective electrode?",
      options: ["NaCl+NaF", "KCl +KF", "All of these", "None of the above"],
      correctAns: 3),
  QuizQuestionUnit2(
      id: 10,
      question:
          "Solid membranes are used for the detection of concentration of speciﬁc ions which include",
      options: [
        "Fluoride ions",
        "Fluoride ions",
        "Both of the above",
        "None of the above"
      ],
      correctAns: 2),
  QuizQuestionUnit2(
      id: 11,
      question: "At infinite dilution equivalent conductance is ",
      options: ["Minimum", "Maximum", "Zero", "None"],
      correctAns: 2),
  QuizQuestionUnit2(
      id: 12,
      question:
          "Membrane used in fluoride selective electrode is made up of _____",
      options: [
        "	Lanthanum Fluoride",
        "Lanthanum hydroxide",
        "Sodium hydroxide",
        "Sodium chloride"
      ],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 13,
      question:
          "In membrane-based electrode, the boundary potential across the membrane gets developed due to the_______",
      options: ["difference ", "decrease", "increase", "Constant value"],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 14,
      question: "As H+ ion concentration decreases, EMF of the cell______",
      options: [
        "Decreases",
        "Increases",
        "Remains  zero",
        "Remains  constant "
      ],
      correctAns: 2),
  QuizQuestionUnit2(
      id: 15,
      question: "Unit of Equivalent conductance is ---",
      options: ["mhos cm-1", "S cm-1", "mhos", "None of the above  "],
      correctAns: 4),
  QuizQuestionUnit2(
      id: 16,
      question: "HgHgCl2 ,  KCl (saturated)	is representation of_____",
      options: [
        "Calomel electrode",
        "SHE",
        "Ag-AgCl electrode",
        "Glass electrode "
      ],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 17,
      question:
          "In conductivity cell a pair of platinum electrodes are coated with_____",
      options: [
        "Platinum chloride",
        "KCl",
        "Silver chloride",
        "Platinum black  "
      ],
      correctAns: 4),
  QuizQuestionUnit2(
      id: 18,
      question: "The calomel electrode is made from which of the following",
      options: ["ZnCl2", "CuCl2", "HgCl2", "Hg2Cl2"],
      correctAns: 4),
  QuizQuestionUnit2(
      id: 19,
      question: "Distance between electrodes in a conductivity cell",
      options: [
        "Is kept fixed",
        "Can be altered",
        "Alters as reaction proceeds ",
        "None of the above",
      ],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 20,
      question:
          "Titration curve of conductometric titration consist of two intersecting lines the intersection point is known as______",
      options: [
        "Conductivity point",
        "Break curve point",
        "End point",
        "None of the above "
      ],
      correctAns: 3),
  QuizQuestionUnit2(
      id: 21,
      question:
          "The advantage of potentiometric titration is that it can be used for titrations of__",
      options: [
        "calcium salt solutions",
        "charcoal solutions",
        "colored solutions",
        "calomel solutions "
      ],
      correctAns: 3),
  QuizQuestionUnit2(
      id: 22,
      question:
          "The first differential derivative plot of a potentiometric titration gives a sharp end point from the graph as",
      options: [
        "Pt of intersection on Y-axis",
        "Minima of the curve",
        "Point of inflection",
        "Maxima of the curve "
      ],
      correctAns: 4),
  QuizQuestionUnit2(
      id: 23,
      question:
          "In potentiometric titrations, as pH of the solution increases , EMF of the cell",
      options: ["Increases", "Decreases", "Remains zero", "Remains constant "],
      correctAns: 1),
  QuizQuestionUnit2(
      id: 24,
      question: "In electromagnetic wave, reciprocal of wavelength is",
      options: ["Frequency", "Velocity", "Wave number", "Amplitude "],
      correctAns: 3),
  QuizQuestionUnit2(
      id: 25,
      question:
          "Potentiometric titrations are preferred over volumetric titrations because----",
      options: [
        "Indicators are not required",
        "carried out above 200C",
        "require calomel electrode",
        "End point is always pink "
      ],
      correctAns: 1),
];

Set markedWrongUnit2 = {};
Set markedCorrectUnit2 = {};
Map markedWrongAnserUnit2 = {};
Map<int, int> tappedMapUnit2 = {};
Set skippedQues = {};
