// written by Rohan 
import 'package:flutter/material.dart';
import './Content_JSON/ListViewFlashCards.dart';

class FlashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text(
          'Flash Cards',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: Column(
        children: [
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
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => FlashCardList(
                    itemIndex: index,
                    itemNum: content[index],
                  ),
                  itemCount: content.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class FlashCardList extends StatelessWidget {
  var itemIndex;
  var itemNum;
  FlashCardList({this.itemIndex, this.itemNum});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: size.height * 0.6,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width * 0.90,
            height: size.height * 0.6,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF0a1931),
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
              margin: EdgeInsets.only(
                  top: size.height * 0.05,
                  right: size.width * 0.05,
                  left: size.width * 0.10),
              child: Text(
                itemNum.title,
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
