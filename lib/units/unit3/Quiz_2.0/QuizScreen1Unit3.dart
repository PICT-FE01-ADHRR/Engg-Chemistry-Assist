import 'package:flutter/material.dart';
import 'dart:async';
import 'QuizScreen2Unit3.dart';

class QuizScreen1 extends StatefulWidget {
  const QuizScreen1({Key? key}) : super(key: key);

  @override
  _QuizScreen1State createState() => _QuizScreen1State();
}

class _QuizScreen1State extends State<QuizScreen1> {
  int timeToNavigate = 5;
  Timer? timer;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _startTimer();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => QuizScreen2()));
    });
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
          print(timeToNavigate);
        }
      });
    });
  }

  void _stopTimer() {
    timeToNavigate = 0;
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: ,
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
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
        child: Stack(children: [
          Container(
              // child: Image.asset("assets/images/sp6.jpg"),
              ),
          //
          Positioned(
            top: deviceHeight * 0.25,
            left: deviceHeight * 0.1,
            child: Container(
              height: deviceHeight * 0.05,
              width: deviceWidth * 0.20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(25, 78, 24, 0.8),
                  Color.fromRGBO(44, 310, 177, 0.9)
                ]),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.2,
            left: deviceHeight * 0.08,
            child: Container(
              height: deviceHeight * 0.03,
              width: deviceWidth * 0.10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(25, 78, 24, 0.8),
                  Color.fromRGBO(44, 310, 177, 0.9)
                ]),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.55,
            right: 0,
            child: Container(
              height: deviceHeight * 0.15,
              width: deviceWidth * 0.30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(52, 64, 245, 0.8),
                  Color.fromRGBO(44, 130, 177, 0.9)
                ]),
              ),
            ),
          ),
          Container(
              // child: Image.asset("assets/images/sp6.jpg"),
              ),
          Positioned(
            top: deviceHeight * 0.3,
            child: Container(
              height: deviceHeight * 0.15,
              width: deviceWidth * 0.30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(52, 64, 245, 0.8),
                  Color.fromRGBO(44, 130, 177, 0.8)
                ]),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.70,
            right: deviceHeight * 0.1,
            child: Container(
              height: deviceHeight * 0.05,
              width: deviceWidth * 0.20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(25, 78, 24, 0.8),
                  Color.fromRGBO(44, 310, 177, 0.9)
                ]),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.76,
            right: deviceHeight * 0.07,
            child: Container(
              height: deviceHeight * 0.03,
              width: deviceWidth * 0.10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [
                  Color.fromRGBO(25, 78, 24, 0.8),
                  Color.fromRGBO(44, 310, 177, 0.9)
                ]),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.35,
            left: deviceWidth * 0.122,
            child: Container(
              height: deviceHeight * 0.3,
              width: deviceWidth * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.05),
                    Colors.white.withOpacity(0.6),
                  ])),
            ),
          ),
          Positioned(
            top: deviceHeight * 0.48,
            left: deviceWidth * 0.20,
            child: Container(
              child: Text(
                "STARTS IN $timeToNavigate SECONDS",
                style: TextStyle(
                  color: Color(0xFFFFFFF0),
                  fontSize: 22,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
