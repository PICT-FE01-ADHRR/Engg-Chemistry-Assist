import 'package:engg_chemistry_study_assist/units/unit2/Content_Data/QuizQuestionList2.dart';
import 'package:flutter/material.dart';
import '../Content_Data/QuizQuestionList2.dart';
// import 'userAnswer.dart';

// ignore: must_be_immutable
class QuestionSet extends StatefulWidget {
  var itemIndex;
  var itemNum;

  QuestionSet({this.itemIndex, this.itemNum});

  @override
  _QuestionSetState createState() => _QuestionSetState();
}

class _QuestionSetState extends State<QuestionSet> {
  var qId;
  bool isTapped = false;
  List<int> tapped = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF0A1931),
              Color(0xFF150E56),
              Color(0xFF0A043C),
              Color(0xFF161D6F)
            ]),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            widget.itemNum.question,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 20 / 2),
          ...List.generate(
            questionListUnit2[0].options.length,
            (index) => Option(
              index1: index,
              text: widget.itemNum.options[index],
              rightanserimport: widget.itemNum.correctAns,
              themecolor: tappedMapUnit2[widget.itemIndex] == index
                  ? Color(0xFFFF8303)
                  : Colors.grey,
              // working
              // tapped.contains(index) ? Color(0xFFFF8303) : Colors.grey,
              press: () {
                isTapped = true;
                if (!tapped.contains(index)) {
                  this.setState(() {
                    tappedMapUnit2.remove(widget.itemIndex);
                    tappedMapUnit2[widget.itemIndex] = index;
                    // working
                    // tapped.clear();
                    // tapped.add(index);
                  });
                }
                // code when a box is clicked
                if ((index + 1 == widget.itemNum.correctAns)) {
                  qId = widget.itemNum.id;
                  markedCorrectUnit2.add(qId);
                } else {
                  qId = widget.itemNum.id;
                  markedWrongUnit2.add(qId);
                  markedWrongAnserUnit2["$qId"] = index + 1;
                  // print(markedWrongAnserUnit2);
                  // print(markedWrongUnit2);
                  // print("Wrong $markedWrongUnit2");
                }

                if (markedWrongUnit2.contains(widget.itemNum.id)) {
                  if (markedCorrectUnit2.contains((widget.itemNum.id))) {
                    markedWrongUnit2.remove(widget.itemNum.id);
                    markedWrongAnserUnit2.remove("$qId");
                    // this.setState(() {
                    //   tapped.remove("$qId");
                    // });
                  }
                }
                // print("***************");
                // print(tappedMapUnit2);
                // print("***************");

                // Option.isAnswered = true;
                //     markedCorrectUnit2.contains(itemNum.id)) {
                //   markedCorrectUnit2.remove(itemNum.id);
                // }
              },
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Option extends StatefulWidget {
  var index1;
  var text;
  var rightanserimport;
  Color themecolor;
  final VoidCallback press;
  Option({
    required this.index1,
    required this.text,
    required this.rightanserimport,
    required this.press,
    required this.themecolor,
  });

  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  List wrongAns = [];

  Color getTheColor() {
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: widget.themecolor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${widget.index1 + 1}. ${widget.text}",
              style: TextStyle(color: widget.themecolor, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  // border: Border.all(color: Colors.grey),
                  border: Border.all(color: widget.themecolor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
