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
      question:
          "Analytical data obtained by the spectroscopic technique can be represented in the form of___",
      options: [
        "Spectra",
        "Spectrum",
        "Fingerprint region",
        "Functional group region"
      ],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 2,
      question:
          "UV-Visible spectroscopy is a analytical technique which uses the electromagnetic spectrum in the range",
      options: ["200-350nm", "350-800 nm", "200-800 nm", "400-4000 cm-1"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 3,
      question:
          "In case of UV-Visible spectroscopy red shift is also called as____ shift",
      options: ["Bathochromic", "Hypochromic", "Hyperchromic", "Hypsochromic"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 4,
      question:
          "Cuvettes used in uv-visible spectrophotometer are made up of______",
      options: ["Glass", "Quartz", "Metal", "None of the above "],
      correctAns: 2),
  QuizQuestionUnit5(
      id: 5,
      question:
          "The solution of substance that absorbs in UVregion appears____to human eyes.",
      options: ["Colored", "Turbid", "Transparent", "None of the above "],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 6,
      question:
          "Covalently unsaturated group responsible for electronic transitions is called as",
      options: ["Auxochrome", "Active molecule", "Chromophore", "Hyperchrome"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 7,
      question: "Out of following which is not detector in IR spectroscopy.",
      options: ["Globar", "Bolometer", "Golay", "thermocouple "],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 8,
      question: "Visible spectrophotometer has operational range…………nm",
      options: ["400-800", "200-400", "200-800", "500-1500"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 9,
      question: "IR spectroscopy measures",
      options: [
        "Molecular Rotation",
        "Electronic Excitation",
        "Nuclear excitation",
        "Molecular vibrations"
      ],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 10,
      question: "KBr is used in IR spectroscopy because it is/has",
      options: ["dipole moment", "diatomic salt", "transparent to IR", "All"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 11,
      question:
          "Shifting of maximum absorption wavelength towards shorter wavelength region is ____ shift",
      options: ["Bathochromic", "Hypochromic", "Hyperchromic", "Hypsochromic"],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 12,
      question:
          "In UV-Visible spectrophotometer tungsten lamp provide light of range (nm)",
      options: ["200 to 800", "350 to 780", "150 to 350", "none"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 13,
      question:
          "UV-Visible spectrophotometer uses ---- nm range of electromagnetic radiation.",
      options: ["200 to 800", "150 to 350", "350 to 780", "none"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 14,
      question:
          "In UV-Visible spectrophotometer wavelength selector used to obtain monochromatic light is",
      options: [
        "Diffraction grating",
        "Prism",
        "Reflective grating",
        "All of the above"
      ],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 15,
      question: "Sample cell in UV-Visible spectrophotometer is made of",
      options: [
        "Glass",
        "Quartz",
        "Both glass and quartz",
        "Either glass or quartz"
      ],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 16,
      question: "In electromagnetic spectrum IR radiations ranges(in cm-1)",
      options: ["4000 to 400", "14000 to 10", "400 to 10", "14000 to 4000"],
      correctAns: 2),
  QuizQuestionUnit5(
      id: 17,
      question:
          "In electromagnetic spectrum IR radiations ranges(in micrometer)",
      options: ["0.8 to 1000", "2.5 to 25", "25 to 1000", "0.8 to 2.5"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 18,
      question: "Infrared spectroscopy is also called as",
      options: [
        "Rotational",
        "Electronic excitation",
        "Vibrational",
        "Nuclear excitation"
      ],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 19,
      question: "Which bending vibration in a molecule is in plane?",
      options: ["Symmetric stretching", "Rocking", "Wagging", "Twisting"],
      correctAns: 2),
  QuizQuestionUnit5(
      id: 20,
      question: "Which of the vibration in a molecule is out of plane?",
      options: ["Scissoring", "Rocking", "Stretching", "Twisting"],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 21,
      question:
          "Modes of vibrations for a linear molecule can be calculated by formula",
      options: ["3N-6", "3N-5", "3N-4", "2N-5"],
      correctAns: 2),
  QuizQuestionUnit5(
      id: 22,
      question:
          "Modes of vibrations for a non-linear molecule can be calculated by formula",
      options: ["3N-5", "2N-5", "3N-6", "3N+6"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 23,
      question: "How many fundamental modes of vibration HCl will have",
      options: ["2", "1", "0", "3"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 24,
      question: "How many fundamental modes of vibration CO2 will have",
      options: ["4", "3", "2", "5"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 25,
      question: "Which of the following molecule is IR inactive",
      options: ["HCl", "H2O", "O2", "CO2"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 26,
      question: "In IR spectra finger print region is(cm-1)",
      options: ["1300 to 909 ", "4000 to 909", "4000-1300", "909-667"],
      correctAns: 3),
  QuizQuestionUnit5(
      id: 27,
      question: "How many fundamental modes of vibration NH3 will have",
      options: ["6", "5", "7", "9"],
      correctAns: 1),
  QuizQuestionUnit5(
      id: 28,
      question:
          "Which of the following oxide is not a composition of Nernst glower",
      options: ["Zirconium", "Barium", "Yitrium", "Thorium"],
      correctAns: 2),
  QuizQuestionUnit5(
      id: 29,
      question: "which is not used as detector in IR spectroscopy?",
      options: ["Thermocouple", "Bolometer", "Golay detector", "Globar"],
      correctAns: 4),
  QuizQuestionUnit5(
      id: 30,
      question: "which is not a bending vibration?",
      options: ["Rocking", "wagging", "twisting", "symmetric"],
      correctAns: 4),
];
