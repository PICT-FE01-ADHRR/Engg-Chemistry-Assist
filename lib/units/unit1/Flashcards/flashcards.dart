// written by Rohan
import 'package:flutter/material.dart';
import 'ListViewFlashCards.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text(
          'Flash Cards',
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
          itemCount: content.length,
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
                        // Color(0xFF0575E6),
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
                    child: Container(
                      // alignment: Align,
                      width: double.infinity,
                      // height: size.height * 0.1,
                      child: Text(
                        content[index].title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto( textStyle: TextStyle(
                            color: Colors.yellow[50],
                            fontSize: size.height * 0.032,
                            ),
                        ),
                        // style: TextStyle(
                        //   color: Colors.yellow[50],
                        //   fontSize: size.height * 0.032,
                        // ),
                      ),
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
