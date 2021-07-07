import 'package:flutter/material.dart';
import './HardnessCalculator.dart';

// class NumericalSolver extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Numerical Solver'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
//             width: double.infinity,
//             color: Colors.blue,
//             height: 50,
//             child: ElevatedButton(
//               child: Text(
//                 'Hardness Calculator',
//                 style: TextStyle(fontSize: 20.0),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HardnessCalculator()),
//                 );
//               },
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
//             width: double.infinity,
//             height: 50,
//             color: Colors.blue,
//             child: ElevatedButton(
//               child: Text(
//                 'Type 2 Numerical',
//                 style: TextStyle(fontSize: 20.0),
//                 textAlign: TextAlign.right,
//               ),
              
//               onPressed: () {
//                 /*
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ),
//                 );
//                 */
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

List functioncalls = [
  HardnessCalculatorCall(),
];

class NumericalSolver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text('Numerical Solver'),
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

class HardnessCalculatorCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: 160,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width - 40,
            height: 145,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HardnessCalculator(),
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
                        "Hardness Calculator",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HardnessCalculator()),
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
/*
class QuestionBankCall2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: 160,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width - 40,
            height: 145,
            child: GestureDetector(
              onTap: () {
               // print("Function Call 2");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionBankUnit11(),
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
                        "Question Bank 2 ",
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuestionBankUnit11()),
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
*/