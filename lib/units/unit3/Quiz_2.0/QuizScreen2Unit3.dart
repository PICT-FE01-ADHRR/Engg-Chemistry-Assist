import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:engg_chemistry_study_assist/Database/database.dart';
import 'QuestionList3.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'QuestionSet3.dart';
import '../Content_Data/QuizQuestionList3.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'ScoreScreenUnit3.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({Key? key}) : super(key: key);

  @override
  _QuizScreen2State createState() => _QuizScreen2State();
}

class _QuizScreen2State extends State<QuizScreen2> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  int gotoFirstPage = 0;
  int timeToNavigate = questionListUnit3.length * 15;
  // int timeToNavigate = 15;
  int gotoLastPage = questionListUnit3.length;

  Timer? timer;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: questionListUnit3.length * 15), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ScoreScreen()));
    });
    _startTimer();
  }

  @override
  void dispose() {
    timer!.cancel();
    _stopTimer();
    super.dispose();
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeToNavigate != 0) {
          timeToNavigate--;
          // print(timeToNavigate);
        }
      });
    });
  }

  void _stopTimer() {
    timeToNavigate = 0;
  }

  MaterialColor getTimerColor() {
    if (timeToNavigate <= 10) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  void fillSet() {
    // skippedQues.addAll()
    for (var i = 0; i < questionListUnit3.length; i++) {
      skippedQues.add(i);
    }
    print(skippedQues);
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    //Disable back button
    return WillPopScope(
      onWillPop: () async => false,
      child: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
          color: Color(0xFF0A1931).withOpacity(0.85),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: deviceHeight * 0.05,
              ),
              CircularPercentIndicator(
                  radius: deviceHeight * 0.115,
                  backgroundColor: Colors.deepPurpleAccent,
                  progressColor: getTimerColor(),
                  lineWidth: deviceWidth * 0.012,
                  percent: timeToNavigate / (questionListUnit3.length * 15),
                  center: Text(
                    timeToNavigate.toString(),
                    style: TextStyle(
                        color: Colors.white, fontSize: deviceHeight * 0.028),
                  )),
              SizedBox(
                height: deviceHeight * 0.015,
              ),
              Container(
                child: Text(
                  "Question - ${pageChanged + 1}",
                  style: TextStyle(
                      color: Colors.white, fontSize: deviceHeight * 0.025),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.015,
              ),
              //Pages of the Quiz
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      pageChanged = index;
                    });
                    print(pageChanged);
                  },
                  //   // physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  itemBuilder: (context, index) => QuestionSet(
                    itemIndex: index,
                    itemNum: questionListUnit3[index],
                  ),
                  itemCount: questionListUnit3.length,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Working of previous Button
                  GestureDetector(
                    onTap: () {
                      // fillSet();
                      if (pageChanged == 0) {
                        pageController.jumpToPage(gotoLastPage);
                      } else {
                        pageController.animateToPage(--pageChanged,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.ease);
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFCE1212),
                      ),
                      height: 45,
                      width: 100,
                      child: Text(
                        "Previous",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  //Working of Next Button
                  GestureDetector(
                    onTap: () {
                      fillSet();
                      if (pageChanged + 1 >= questionListUnit3.length) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CustomDialogBox2(
                                description: "Press Submit Button",
                                buttonText: "OK",
                              );
                            });
                      }
                      //else {
                      if (pageChanged + 1 < questionListUnit3.length) {
                        pageController.animateToPage(++pageChanged,
                            duration: Duration(milliseconds: 250),
                            curve: Curves.ease);
                      }

                      // }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFF81B214),
                        ),
                        height: 45,
                        width: 100,
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                  //WOrking of submit button
                  GestureDetector(
                    onTap: () {
                      // if (pageChanged + 1 == questionListUnit3.length) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AttemptedListUnit3()));
                      // }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.cyan,
                        ),
                        height: 45,
                        width: 100,
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDialogBox extends StatelessWidget {
  final String description, buttonText, button2Text;
  CustomDialogBox(
      {required this.description,
      required this.buttonText,
      required this.button2Text});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    // var deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 100, bottom: 16, left: 16, right: 16),
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9).withOpacity(0.8),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(color: Colors.black, offset: Offset(0.0, 16.0)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              // Text(
              //   title,
              //   style: TextStyle(fontSize: 24),
              // ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: deviceHeight * 0.02),
                alignment: Alignment.center,
                child: Text(
                  description,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 26,
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
                      height: deviceHeight * 0.055,
                      width: deviceHeight * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        // color: Colors.orange,
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              // Color(0xFF0A1931),
                              Color(0xFF16222A),
                              Color(0xFF161D6F),
                              Color(0xFF3A6073),
                              Color(0xFF150E56),
                              // Color(0xFF0A043C),
                            ]),
                      ),
                      child: Text(
                        button2Text,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // final submission by the user
                      // add database score check logic here
                      var currectScore = markedCorrectUnit3.length;
                      // FirebaseAuth auth = FirebaseAuth.instance;
                      // String uid = auth.currentUser!.uid.toString();
                      gethighSCoreFuncFirebase();
                      // int highscoreDisplay = SetValues.getHighScore();
                      // print(highscoreDisplay);
                      // Stream documentStream = FirebaseFirestore.instance
                      //     .collection('Users')
                      //     .doc(uid)
                      //     .snapshots();
                      // ignore: unnecessary_statements
                      // documentStream.toList()
                      // print(documentStream);
                      print(currectScore);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScoreScreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: deviceHeight * 0.055,
                      width: deviceHeight * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        // color: Colors.orange,
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              // Color(0xFF0A1931),
                              Color(0xFF16222A),
                              Color(0xFF161D6F),
                              Color(0xFF3A6073),
                              Color(0xFF150E56),
                              // Color(0xFF0A043C),
                            ]),
                      ),
                      child: Text(
                        buttonText,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          right: 10,
          child: Image.network(
            "https://media.giphy.com/media/9aD5dIPVqmEy7U7Zqe/giphy.gif",
            height: 100,
          ),
        ),
      ],
    );
  }
}

class CustomDialogBox2 extends StatelessWidget {
  final String description, buttonText;
  CustomDialogBox2({
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;

    // var deviceWidth = MediaQuery.of(context).size.width;

    // var deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 100, bottom: 16, left: 16, right: 16),
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9).withOpacity(0.8),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(color: Colors.black, offset: Offset(0.0, 16.0)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),

              // Text(
              //   title,
              //   style: TextStyle(fontSize: 24),
              // ),

              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: deviceHeight * 0.02),
                alignment: Alignment.center,
                child: Text(
                  description,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: deviceHeight * 0.055,
                  width: deviceHeight * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    // color: Colors.orange,
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          // Color(0xFF0A1931),
                          Color(0xFF16222A),
                          Color(0xFF161D6F),
                          Color(0xFF3A6073),
                          Color(0xFF150E56),
                          // Color(0xFF0A043C),
                        ]),
                  ),
                  child: Text(
                    buttonText,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          right: 10,
          child: Image.network(
            "https://media.giphy.com/media/NPU9J1EPSdMCL82YF6/giphy.gif",
            height: 100,
          ),
        ),
      ],
    );
  }
}

class CustomDialogBox3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    // var deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 100, bottom: 16, left: 16, right: 16),
          decoration: BoxDecoration(
            color: Color(0xFFF9F9F9).withOpacity(0.8),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(color: Colors.black, offset: Offset(0.0, 16.0)),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              // Text(
              //   title,
              //   style: TextStyle(fontSize: 24),
              // ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: deviceHeight * 0.02),
                alignment: Alignment.center,
                child: Text(
                  "heeo",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 26,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScoreScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: deviceHeight * 0.055,
                  width: deviceHeight * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    // color: Colors.orange,
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          // Color(0xFF0A1931),
                          Color(0xFF16222A),
                          Color(0xFF161D6F),
                          Color(0xFF3A6073),
                          Color(0xFF150E56),
                          // Color(0xFF0A043C),
                        ]),
                  ),
                  child: Text(
                    "heloo",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          right: 10,
          child: Image.network(
            "https://media.giphy.com/media/NPU9J1EPSdMCL82YF6/giphy.gif",
            height: 100,
          ),
        ),
      ],
    );
  }
}

class SetValues {
  static var highscore;
  static void setHighScore(sethigh) {
    highscore = sethigh;
  }

  static int getHighScore() {
    return highscore;
  }
}

void gethighSCoreFuncFirebase() {
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();

  FirebaseFirestore.instance.collection("Users").doc(uid).get().then((value) {
    // SetValues.setHighScore(value.data()!["Unit1Quiz"]);
    print(value.data()!["Unit1Quiz"]);
  });
}
