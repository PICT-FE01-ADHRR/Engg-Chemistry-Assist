import 'package:flutter/material.dart';

class QuizCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("UNIT-1"),
          backgroundColor: Color(0xFF0a1931),
          // backgroundColor: Colors.transparent,
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 12.0),
                  child: Column(
                    children: [
                      ProgressBar(),
                    ],
                  ),
                ),
              )
              // SafeArea(child: child)
            ],
          ),
        ));
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: EdgeInsets.only(top: 12),
      width: double.infinity,
      decoration: new BoxDecoration(
          // color: Colors.white,
          border: Border.all(color: Color(0xFF3F4768)),
          borderRadius: BorderRadius.circular(50)),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Positioned.fill(
              top: 2,
              left: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("15 sec"),
                    //
                    Container(
                      alignment: Alignment.centerRight,
                      child: Image.asset("assets/images/clock.jpg"),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
