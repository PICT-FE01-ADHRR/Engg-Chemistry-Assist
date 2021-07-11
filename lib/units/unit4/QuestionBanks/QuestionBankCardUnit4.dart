import 'package:engg_chemistry_study_assist/units/Unit4/Content_Data/QuizQuestionList4.dart';
import 'package:flutter/material.dart';
// import '../Content_Data/QuizQuestionList.dart';

class QuestionBankCardUnit4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text(
          'Question Bank',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF161D6F),
                Color(0xFF0A1931),
                Color(0xFF150E56),
                Color(0xFF0A043C),
              ]),
        ),
        child: ListView.builder(
          itemCount: questionListUnit4.length,
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.lightBlue[100],
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              height: size.height * 0.4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: size.width * 0.90,
                    height: size.height * 0.4,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      // color: Color(0xFF1089FF),
                      gradient: LinearGradient(colors: [
                        Color(0xFF1089FF).withOpacity(0.9),
                        Color(0xFF0575E6),
                        Color(0xFF021B79),
                      ]),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 3.0,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Container(
                                width: double.infinity,
                                // height: size.height * 0.1,
                                child: Container(
                                  // alignment: Alignment(0.0, 2.5),
                                  child: Text(
                                    questionListUnit4[index].question,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Card(
                              color: Colors.amber[50],
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            questionListUnit4[index].options[0],
                                            style: TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              questionListUnit4[index]
                                                  .options[1],
                                              style: TextStyle(fontSize: 15))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.amber[50],
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                            questionListUnit4[index].options[2],
                                            style: TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              questionListUnit4[index]
                                                  .options[3],
                                              style: TextStyle(fontSize: 15))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.025,
                            ),
                            RichText(
                              text: TextSpan(
                                text: "Correct Answer: ",
                                style: TextStyle(
                                  fontSize: size.height * 0.022,
                                  // color: Colors.redAccent[700],
                                ),
                                children: [
                                  TextSpan(
                                    text: questionListUnit4[index].options[
                                        questionListUnit4[index].correctAns -
                                            1],
                                    style: TextStyle(
                                      fontSize: size.height * 0.0252,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.redAccent[700],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
