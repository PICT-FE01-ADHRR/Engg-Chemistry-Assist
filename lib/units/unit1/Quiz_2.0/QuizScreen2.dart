import 'package:engg_chemistry_study_assist/units/unit1/Quiz_2.0/QuestionList.dart';
import 'package:flutter/material.dart';
import 'QuestionSet.dart';
import 'scorescreen.dart';
import './Data/QuizQuestionList.dart';

class QuizScreen2 extends StatefulWidget {
  const QuizScreen2({Key? key}) : super(key: key);

  @override
  _QuizScreen2State createState() => _QuizScreen2State();
}

class _QuizScreen2State extends State<QuizScreen2> {
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  int gotoFirstPage = 0;
  int gotoLastPage = questionList.length;
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
                height: 125,
              ),
              Container(
                child: Text("HI"),
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
                    itemNum: questionList[index],
                  ),
                  itemCount: questionList.length,
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
                      if (pageChanged + 1 >= questionList.length) {
                        // pageController.jumpToPage(
                        //   gotoFirstPage,
                        // );
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CustomDialogBox(
                                  // title: " Quiz Completed",
                                  description: "Press Submit Button ",
                                  buttonText: "Submit");
                              // return AlertDialog(
                              //   title: Text("Quiz Completed"),
                              //   content: Text("Click Submit Button"),
                              //   actions: [
                              //     FlatButton(
                              //         onPressed: () {}, child: Text("ok"))
                              //   ],
                              // );
                            });
                      }
                      //else {
                      pageController.animateToPage(++pageChanged,
                          duration: Duration(milliseconds: 250),
                          curve: Curves.ease);
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
                      // if (pageChanged + 1 == questionList.length) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AttemptedList()));
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
  final String description, buttonText;
  CustomDialogBox({required this.description, required this.buttonText});

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
    var deviceWidth = MediaQuery.of(context).size.width;
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
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScoreScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 35,
                    width: 75,
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
                // child: TextButton(
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                //   child: Text(buttonText),
                // ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          left: 10,
          right: 10,
          child: Image.network(
            "https://media.giphy.com/media/VYhKFysej1b0UMDnHa/giphy.gif",
            height: 100,
          ),
        ),
      ],
    );
  }
}
