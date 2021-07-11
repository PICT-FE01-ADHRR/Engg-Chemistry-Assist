// QuestionBankUnit1

//Code Written by Rohan Doshi
import 'package:flutter/material.dart';
import 'studymaterial.dart';
import 'QuestionBankUnit3_1.dart';
import 'QuestionBankUnit3_2.dart';

List functioncalls = [
  StudyMaterialCall1(),
  QuestionBankCall1(),
  QuestionBankCall2(),
];

class QuestionBankUnit3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text('Study Material Unit 3'),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.10,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  child: Text(
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
                  margin: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  decoration: BoxDecoration(
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.88,
            height: size.height * 0.18,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StudyMaterialUnit3(),
                  ),
                );
              },
              child: Container(
                width: size.height * 0.18,
                height: size.width * 0.923,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
                      child: Text(
                        "Study Material",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudyMaterialUnit3()),
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.88,
            height: size.height * 0.18,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionBankUnit31(),
                  ),
                );
              },
              child: Container(
                width: size.height * 0.18,
                height: size.width * 0.923,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
                      child: Text(
                        "MCQ Bank 1",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionBankUnit31()),
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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.88,
            height: size.height * 0.18,
            child: GestureDetector(
              onTap: () {
                // print("Function Call 2");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionBankUnit32(),
                  ),
                );
              },
              child: Container(
                width: size.height * 0.18,
                height: size.width * 0.923,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
                      child: Text(
                        "MCQ Bank 2",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionBankUnit32()),
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
