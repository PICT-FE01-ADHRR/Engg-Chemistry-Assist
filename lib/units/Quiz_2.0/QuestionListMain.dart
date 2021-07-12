import 'Data/QuizQuestionListMain.dart';

import 'QuizScreen2Main.dart';
// import 'package:engg_chemistry_study_assist/units/unit1/Quiz_2.0/ScoreScreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AttemptedListMain extends StatelessWidget {
  PageController pageController = PageController(initialPage: 0);

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
              Color(0xFF0A1931),
              Color(0xFF0A043C).withOpacity(0.8),
              Color(0xFF161D6F),
              Color(0xFF150E56),
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
                        gradient: LinearGradient(colors: [
                          Color(0xFF8e9eab),
                          Colors.white,
                          Color(0xFFeef2f3),
                          Colors.white,
                        ])),
                    child: Text("Go Back"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (tappedMapMain.length == questionListMain.length) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomDialogBox(
                                    description:
                                        "Are you sure you want to submit?",
                                    buttonText: "YES",
                                    button2Text: "NO",
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomDialogBox2(
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
                        gradient: LinearGradient(colors: [
                          Color(0xFF8e9eab),
                          Colors.white,
                          Color(0xFFeef2f3)
                        ])),
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
            Expanded(
              //When clicked on question number it pops a page
              child: ListView.builder(
                itemCount: questionListMain.length,
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
  DisplayAllQuestions(this.itemIndex, this.goBackToQuestions);

  String otherThanMarked() {
    if (tappedMapMain.containsKey(itemIndex)) {
      return "Answered";
    } else {
      return "Not Answered";
    }
  }

  Gradient getColor() {
    if (!tappedMapMain.containsKey(itemIndex)) {
      return LinearGradient(
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
      return LinearGradient(
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
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: 200,
                  // width: deviceWidth,
                  color: Colors.white,
                  child: Text(
                    "Question - ${questionListMain[itemIndex].id}",
                    style: TextStyle(fontSize: deviceHeight * 0.027),
                  ),
                  margin: EdgeInsets.only(left: deviceHeight * 0.04),
                ),
                Container(
                  height: deviceHeight * 0.05,
                  width: deviceWidth * 0.34,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(deviceHeight * 0.035),
                    gradient: getColor(),
                  ),
                  child: Text(otherThanMarked()),
                  margin: EdgeInsets.only(right: deviceHeight * 0.05),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
