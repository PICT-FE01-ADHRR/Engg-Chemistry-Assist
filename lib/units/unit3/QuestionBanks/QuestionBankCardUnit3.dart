import '../Content_Data/QuestionBankQuestionsUnit3.dart';
import 'package:flutter/material.dart';
// import '../Content_Data/QuizQuestionList.dart';

class QuestionBankCardUnit3 extends StatelessWidget {
  const QuestionBankCardUnit3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: const Text(
          'Question Bank',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: const Color(0xFF0a1931),
      ),
      body: Container(
        decoration: const BoxDecoration(
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
          itemCount: questionListUnit3.length,
          itemBuilder: (context, index) {
            return Container(
              // color: Colors.lightBlue[100],
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              height: size.height * 0.4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: size.width * 0.90,
                    height: size.height * 0.4,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      // color: Color(0xFF1089FF),
                      gradient: LinearGradient(colors: [
                        const Color(0xFF1089FF).withOpacity(0.9),
                        const Color(0xFF0575E6),
                        const Color(0xFF021B79),
                      ]),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(
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
                              decoration: const BoxDecoration(),
                              child: SizedBox(
                                width: double.infinity,
                                // height: size.height * 0.1,
                                child: Container(
                                  // alignment: Alignment(0.0, 2.5),
                                  child: Text(
                                    questionListUnit3[index].question,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Card(
                              color: Colors.amber[50],
                              margin: const EdgeInsets.symmetric(
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
                                            questionListUnit3[index].options[0],
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              questionListUnit3[index]
                                                  .options[1],
                                              style:
                                                  const TextStyle(fontSize: 15))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              color: Colors.amber[50],
                              margin: const EdgeInsets.symmetric(
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
                                            questionListUnit3[index].options[2],
                                            style:
                                                const TextStyle(fontSize: 15),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              questionListUnit3[index]
                                                  .options[3],
                                              style:
                                                  const TextStyle(fontSize: 15))
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
                                    text: questionListUnit3[index].options[
                                        questionListUnit3[index].correctAns -
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
