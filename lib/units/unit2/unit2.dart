// written by Dinesh
import 'package:flutter/material.dart';
// import './studymaterial.dart';
import 'Content_JSON/ListViewUnit2.dart';

class Unit2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text(
          'UNIT-2',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xFF0a1931),
        // backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:
              // LinearGradient(colors: [Color(0xFF4b6cb7), Color(0xFF182848)])),
              LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                Color(0xFF161D6F),
                Color(0xFF0A1931),
                Color(0xFF150E56),
                Color(0xFF0A043C),
              ]),
        ),
        child: Column(
          children: [
            Container(
              height: size.height * 0.10,
              width: double.infinity,
              // color: Color(0xFF0a1931),
              // color: Colors.red,
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
              //Main bottom container containing the contents of unit-3
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        // color: Color(0xFFfdfaf6),
                        gradient: LinearGradient(colors: [
                          Colors.white.withOpacity(0.65),
                          Colors.white.withOpacity(0.65),
                        ]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                  ListView.builder(
                    itemBuilder: (context, index) => MyListUnit1(
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
      ),
    );
  }
}

// ignore: must_be_immutable
class MyListUnit1 extends StatelessWidget {
  var itemIndex;
  var itemNum;
  MyListUnit1({this.itemIndex, this.itemNum});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: 160,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width - 40,
            height: 145,
            // decoration: BoxDecoration(
            //     // color: Colors.blue,
            //     borderRadius: BorderRadius.circular(40)),
            child: GestureDetector(
              onTap: () {
                // print("tapped in unit3 listitem");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => funcList[itemIndex],
                  ),
                );
              },
              child: Container(
                width: size.width - 30,
                height: 145,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                      // Color(0xFFf64f59),
                      // Color(0xFF21094e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      // color: Color(0xFFff7b54),
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
            top: 40,
            left: 20,
            child: Container(
              // color: Colors.deepOrangeAccent,
              child: SizedBox(
                height: 100,
                width: size.width - 200,
                child: Column(
                  children: [
                    GestureDetector(
                      child: Text(
                        itemNum.title,
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => funcList[itemIndex],
                          ),
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
