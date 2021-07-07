import 'package:flutter/material.dart';
// import '../home_page.dart';
// import './login_page.dart';

class FirstButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Container(
        height: 60,
        width: 130,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: new LinearGradient(
            colors: [Color(0xFF12c2e9), Color(0xFFc471ed), Color(0xFFf64f59)],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
          ),
        ),
        child: TextButton(
          child: new Text(
            'Proceed',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: () {
            print('clicked');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => Homepage(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
