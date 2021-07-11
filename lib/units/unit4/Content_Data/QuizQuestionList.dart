class QuizQuestion {
  int id;
  String question;
  List options;
  int correctAns;

  QuizQuestion(
      {required this.id,
      required this.question,
      required this.options,
      required this.correctAns});
}

List questionList = [
  QuizQuestion(
      id: 1,
      question: "Suspended impurities can be separated by______.",
      options: [
        "Zeolite process",
        "Ion Exchange process",
        "Filtration",
        "Osmosis"
      ],
      correctAns: 3),
  QuizQuestion(
      id: 2,
      question:
          "Water which does not form lather readily with soap is called as 	",
      options: ["	Soft water", "Pure water", "Impure Water", "Hard Water"],
      correctAns: 4),
  QuizQuestion(
      id: 3,
      question: "The colour of metal-EBT complex is______.",
      options: ["A.	Colourless", "Wine red", "Blue", "Yellow "],
      correctAns: 2),
  QuizQuestion(
      id: 4,
      question:
          "In alkalinity titration, second end point is called as 	end point.",
      options: ["Phenolpthalein", "EBT", "Methyl orange", "Fluoroscien "],
      correctAns: 3),
  QuizQuestion(
      id: 5,
      question: "Hardness determination is _________ type of titration.",
      options: ["Precipitation", "Redox", "Complexometric", "Acid-base "],
      correctAns: 3),
  QuizQuestion(
      id: 6,
      question: "Temporary hardness of water is due to_____",
      options: ["Chlorides", "Bicarbonates", "Nitrates", "Heavy metal salts "],
      correctAns: 2),
];
