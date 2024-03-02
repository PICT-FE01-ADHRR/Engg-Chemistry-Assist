import 'package:flutter/material.dart';
import '../Content_Data/QuizQuestionList.dart';
import 'package:engg_chemistry_study_assist/Database/database.dart';

// ignore: must_be_immutable
class ScoreScreen extends StatefulWidget {
  var score = markedCorrect.length;

  ScoreScreen({super.key});

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  Text greetUser() {
    if (widget.score > questionList.length * 0.8) {
      var deviceHeight = MediaQuery.of(context).size.height;
      return Text(
        "Congratulations! ",
        style: TextStyle(fontSize: deviceHeight * 0.035, color: Colors.white),
      );
    }
    return const Text("");
  }

  @override
  Widget build(BuildContext context) {
    quizUnit1scoredb(markedCorrect.length);
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
          gradient:
              // LinearGradient(colors: [Color(0xFF4b6cb7), Color(0xFF182848)])),
              LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFF0A1931),
                Color(0xFF150E56),
                Color(0xFF0A043C),
                Color(0xFF161D6F)
              ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: deviceHeight * 0.15),
              Column(
                children: [
                  SizedBox(height: deviceHeight * 0.02),
                  greetUser(),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      alignment: Alignment.center,
                      height: deviceHeight * 0.2,
                      width: deviceWidth * 0.6,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              const Color(0xFF0A1931).withOpacity(0.4),
                              const Color(0xFF161D6F).withOpacity(0.6),
                              const Color(0xFF5C33F6).withOpacity(0.2),
                              const Color(0xFFA239EA).withOpacity(0.5),
                              const Color(0xFF0A043C).withOpacity(0.8),
                            ]),
                      ),
                      child: Text(
                        "SCORE: ${widget.score}/${questionList.length}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: deviceHeight * 0.035),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceHeight * 0.02,
                  ),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade900,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () {
                  tappedMap.clear();
                  markedWrong.clear();
                  markedCorrect.clear();
                  markedWrongAnser.clear();
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
              const Text(
                "Here is the list of the wrong questions: ",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: markedWrong.length,
                    // itemCount: 5,
                    itemBuilder: (context, index) {
                      return DisplayWrongQuestions(
                        itemIndex: index,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DisplayWrongQuestions extends StatelessWidget {
  var itemIndex;
  DisplayWrongQuestions({
    super.key,
    this.itemIndex,
  });

  final _listvalues = markedWrongAnser.values.toList();
  final _listkeys = markedWrongAnser.keys.toList();
  @override
  Widget build(BuildContext context) {
    final correctAnswers =
        questionList[int.parse(_listkeys[itemIndex]) - 1].correctAns;
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      // color: Colors.black,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: deviceHeight * 0.035,
                vertical: deviceHeight * 0.017),
            // alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            margin: const EdgeInsets.only(bottom: 20),
            // height: deviceHeight * 0.18,
            width: deviceWidth,
            child: Column(
              children: [
                Text(
                  questionList[int.parse(_listkeys[itemIndex]) - 1].question,
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceHeight * 0.010),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.red,
                  ),
                  child: Text(
                    "Your Answer: ${questionList[int.parse(_listkeys[itemIndex]) - 1].options[_listvalues[itemIndex] - 1]}",
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(deviceHeight * 0.010),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Colors.green,
                  ),
                  child: Text(
                    "Correct Answer: ${questionList[int.parse(_listkeys[itemIndex]) - 1].options[correctAnswers - 1]}",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
