import 'package:engg_chemistry_study_assist/Database/database.dart';
import 'package:flutter/material.dart';
import '../Content_Data/QuizQuestionList4.dart';

// ignore: must_be_immutable
class ScoreScreen extends StatefulWidget {
  // const ScoreScreen({Key? key}) : super(key: key);
  var score = markedCorrectUnit4.length;

  ScoreScreen({super.key});
  // var score = 5;

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  Text greetUser() {
    if (widget.score > questionListUnit4.length * 0.8) {
      var deviceHeight = MediaQuery.of(context).size.height;
      // var deviceWidth = MediaQuery.of(context).size.width;
      return Text(
        "Congratulations! ",
        style: TextStyle(fontSize: deviceHeight * 0.035, color: Colors.white),
      );
    }
    return const Text("");
  }

  // var score = 5;
  @override
  Widget build(BuildContext context) {
    quizUnit4scoredb(markedCorrectUnit4.length);
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
              // Container(
              //   alignment: Alignment.center,
              //   height: deviceHeight * 0.065,
              //   width: deviceWidth * 0.4,
              //   color: Colors.red,
              //   child: Text("Score: $score",
              //       style: TextStyle(
              //           color: Colors.white, fontSize: deviceHeight * 0.035)),
              // ),
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
                        "SCORE: ${widget.score}/${questionListUnit4.length}",
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
                  // var count = 0;
                  tappedMapUnit4.clear();
                  markedWrongUnit4.clear();
                  markedCorrectUnit4.clear();
                  markedWrongAnserUnit4.clear();
                  // UserAnsweredData.deleteData();
                  // Navigator.popUntil(
                  //   context,
                  //   (route) {
                  //     // return count++ ==53;
                  //     return count++ == 5;
                  //   },
                  // );
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
              ),
              const Text(
                "Here is the list of the wrong questions: ",
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: markedWrongUnit4.length,
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
  // var itemNum;
  var itemIndex;
  // Set temp = {2, 4, 3};
  DisplayWrongQuestions({
    super.key,
    this.itemIndex,
  });
  // List key_list = [];
  // markedWrongAnser.forEach((key, value) => key_list.add()

  // })

  final _listvalues = markedWrongAnserUnit4.values.toList();
  final _listkeys = markedWrongAnserUnit4.keys.toList();

  // void getWrongIndex() {
  //   // for (var num in temp) {
  //   //   print(num - 1);
  //   //   // print(questionListUnit4[num - 1].question);
  //   // }

  //   temp.forEach((element) {
  //     print(element);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final correctAnswers =
        questionListUnit4[int.parse(_listkeys[itemIndex]) - 1].correctAns;
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
                // Text(
                //   displayMissedQuestions(),
                //   style: TextStyle(color: Colors.white),
                // ),
                Text(
                  // itemIndex.toString(),
                  // code for question display

                  questionListUnit4[int.parse(_listkeys[itemIndex]) - 1]
                      .question,
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
                    // itemIndex.toString(),

                    // code for wrong answer marked

                    "Your Answer: ${questionListUnit4[int.parse(_listkeys[itemIndex]) - 1].options[_listvalues[itemIndex] - 1]}",

                    // style: TextStyle(
                    //     fontSize: deviceHeight * 0.019,
                    //     color: Colors.black),
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
                    // correct code for correct answer
                    "Correct Answer:  ${questionListUnit4[int.parse(_listkeys[itemIndex]) - 1].options[correctAnswers - 1]}",

                    // style: TextStyle(
                    //     fontSize: deviceHeight * 0.025,
                    //     color: Colors.black),
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
