import '../Content_Data/QuizQuestionList4.dart';

import '../Quiz_2.0/QuizScreen2Unit4.dart';
// import 'package:engg_chemistry_study_assist/units/unit1/Quiz_2.0/ScoreScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AttemptedListUnit4 extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);

  AttemptedListUnit4({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight,
      width: deviceWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xFF0A1931),
              const Color(0xFF0A043C).withOpacity(0.8),
              const Color(0xFF161D6F),
              const Color(0xFF150E56),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.1,
            ),
            Container(
              margin: EdgeInsets.only(left: deviceHeight * 0.035),
              child: Text(
                "Here is the list of questions you have answered: ",
                style: TextStyle(
                    color: Colors.white, fontSize: deviceHeight * 0.030),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: deviceHeight * 0.06,
                    width: deviceWidth * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          deviceWidth * 0.035,
                        ),
                        // color: Colors.white,
                        gradient: const LinearGradient(colors: [
                          Color(0xFF8e9eab),
                          Colors.white,
                          Color(0xFFeef2f3),
                          Colors.white,
                        ])),
                    child: const Text("Go Back"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (tappedMapUnit4.length == questionListUnit4.length) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomDialogBox(
                                    description:
                                        "Are you sure you want to submit?",
                                    buttonText: "YES",
                                    button2Text: "NO",
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomDialogBox2(
                                    description: "Complete the quiz first ",
                                    buttonText: "Ok",
                                  )));
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: deviceHeight * 0.06,
                    width: deviceWidth * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          deviceWidth * 0.035,
                        ),
                        // color: Colors.white,
                        gradient: const LinearGradient(colors: [
                          Color(0xFF8e9eab),
                          Colors.white,
                          Color(0xFFeef2f3)
                        ])),
                    child: const Text("Submit"),
                  ),
                ),
              ],
            ),
            Expanded(
              //When clicked on question number it pops a page
              child: ListView.builder(
                itemCount: questionListUnit4.length,
                itemBuilder: (context, index) => DisplayAllQuestions(index, () {
                  var count = 0;
                  print(index);
                  Navigator.popUntil(context, (route) => count++ == 1);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DisplayAllQuestions extends StatelessWidget {
  int itemIndex;
  final VoidCallback goBackToQuestions;
  DisplayAllQuestions(this.itemIndex, this.goBackToQuestions, {super.key});

  String otherThanMarked() {
    if (tappedMapUnit4.containsKey(itemIndex)) {
      return "Answered";
    } else {
      return "Not Answered";
    }
  }

  Gradient getColor() {
    if (!tappedMapUnit4.containsKey(itemIndex)) {
      return const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFED213A),
            Colors.redAccent,
            // Color(0xFF0A043C).withOpacity(0.8),
            Color(0xFF93291E),
            // Color(0xFF150E56),
          ]);
    } else {
      return const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFF11998e),
            // Color(0xFF0A043C).withOpacity(0.8),
            Colors.greenAccent,
            Color(0xFF38ef7d),
            Color(0xFF11998e),
            // Color(0xFF150E56),
          ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: goBackToQuestions,
      child: Column(
        children: [
          SizedBox(
            height: deviceHeight * 0.015,
          ),
          Container(
            height: 100,
            width: deviceWidth,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: 200,
                  // width: deviceWidth,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: deviceHeight * 0.04),
                  child: Text(
                    "Question - ${questionListUnit4[itemIndex].id}",
                    style: TextStyle(fontSize: deviceHeight * 0.027),
                  ),
                ),
                Container(
                  height: deviceHeight * 0.05,
                  width: deviceWidth * 0.34,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(deviceHeight * 0.035),
                    gradient: getColor(),
                  ),
                  margin: EdgeInsets.only(right: deviceHeight * 0.05),
                  child: Text(otherThanMarked()),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
