//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'studymaterial.dart';
import 'QuestionBankUnit1_1.dart';
import 'QuestionBankUnit1_2.dart';

List functioncalls = [
  const StudyMaterialCall1(),
  const QuestionBankCall1(),
  const QuestionBankCall2(),
];

class QuestionBankUnit1 extends StatelessWidget {
  const QuestionBankUnit1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: const Text('Study Material Unit 1'),
        backgroundColor: const Color(0xFF0a1931),
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.10,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const Text(
                    "Contents: ",
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xFFfdfaf6),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  itemBuilder: (context, index) => functioncalls[index],
                  itemCount: functioncalls.length,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class StudyMaterialCall1 extends StatelessWidget {
  const StudyMaterialCall1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: size.width * 0.88,
            height: size.height * 0.18,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StudyMaterialUnit1(),
                  ),
                );
              },
              child: Container(
                width: size.height * 0.18,
                height: size.width * 0.923,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.0711,
            left: 0,
            child: Container(
              child: SizedBox(
                height: size.height * 0.17,
                width: size.width * 0.85,
                child: Column(
                  children: [
                    GestureDetector(
                      child: const Text(
                        "Notes",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StudyMaterialUnit1()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionBankCall1 extends StatelessWidget {
  const QuestionBankCall1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: size.width * 0.88,
            height: size.height * 0.18,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuestionBankUnit11(),
                  ),
                );
              },
              child: Container(
                width: size.height * 0.18,
                height: size.width * 0.923,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.0711,
            left: 0,
            child: Container(
              // color: Colors.deepOrangeAccent,
              child: SizedBox(
                height: size.height * 0.17,
                width: size.width * 0.85,
                child: Column(
                  children: [
                    GestureDetector(
                      child: const Text(
                        "MCQ Bank 1",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuestionBankUnit11()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionBankCall2 extends StatelessWidget {
  const QuestionBankCall2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            width: size.width * 0.88,
            height: size.height * 0.18,
            child: GestureDetector(
              onTap: () {
                // print("Function Call 2");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuestionBankUnit12(),
                  ),
                );
              },
              child: Container(
                width: size.height * 0.18,
                height: size.width * 0.923,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.0711,
            left: 0,
            child: Container(
              // color: Colors.deepOrangeAccent,
              child: SizedBox(
                height: size.height * 0.17,
                width: size.width * 0.85,
                child: Column(
                  children: [
                    GestureDetector(
                      child: const Text(
                        "MCQ Bank 2",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const QuestionBankUnit12()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
