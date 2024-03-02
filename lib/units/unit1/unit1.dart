import 'package:flutter/material.dart';
import 'Content_Data/ListViewUnit1.dart';

class Unit1 extends StatelessWidget {
  const Unit1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: const Text(
          'UNIT-1',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: const Color(0xFF0a1931),
        // backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
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
              //Main bottom container containing the contents of unit-1
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
  MyListUnit1({super.key, this.itemIndex, this.itemNum});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red,
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
                    builder: (context) => funcList[itemIndex],
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
                      // Color(0xFFf64f59),
                      // Color(0xFF21094e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      // color: Color(0xFFff7b54),
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
                      child: Text(
                        itemNum.title,
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
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
