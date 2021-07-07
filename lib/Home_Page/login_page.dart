import 'package:flutter/material.dart';
//import './button/button.dart';
import 'package:firebase_database/firebase_database.dart';
// import './home_page.dart';
// import './class.dart';
import '/Google_Login/res/custom_colors.dart';
import '/Google_Login/utils/authentication.dart';
import '/Google_Login/widgets/google_sign_in_button.dart';



class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final fb = FirebaseDatabase.instance;
  var retrievedName = "";
  var name = "";
  @override
  Widget build(BuildContext context) {

    // final ref = fb.reference().child("User Name");
    // final dbref = fb.instance.reference();
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            height: size.height * .35,
            child: Image.asset(
              "assets/images/chem.jpg",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                'Welcome To',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5,
                    color: Colors.white),
              ),
              Text(
                'Chemistry Assist',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          // Text(
          //   'Please Enter Your Name',
          //   style: TextStyle(
          //       fontSize: 15,
          //       fontWeight: FontWeight.normal,
          //       letterSpacing: 1.5,
          //       color: Colors.white),
          // ),
          // SizedBox(
          //   height: 8,
          // ),
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(vertical: 10.0, horizontal: 32.0),
          //   child: TextField(
          //     style: TextStyle(color: Colors.white),
          //     decoration: InputDecoration(
          //       //hintText: "....",
          //       hintStyle: TextStyle(fontSize: 15, color: Colors.white),
          //       //When the textform field is not selected
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.all(Radius.circular(10)),
          //         borderSide: BorderSide(
          //           color: Colors.white,
          //           width: 2.0,
          //         ),
          //       ),
          //       //When we are about to type
          //       border: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(10)),
          //           borderSide: BorderSide(color: Colors.black)),
          //       labelText: "Full Name",
          //       labelStyle: TextStyle(fontSize: 20, color: Colors.white),
          //     ),
          //     onChanged: (String value) {
          //       name = value;
          //     },
          //   ),
          // ),
          // SizedBox(
          //   height: 15,
          // ),
          // Container(
          //   height: 60,
          //   width: 130,
          //   decoration: new BoxDecoration(
          //     borderRadius: BorderRadius.circular(80),
          //     gradient: new LinearGradient(
          //       colors: [
          //         Color(0xFF12c2e9),
          //         Color(0xFFc471ed),
          //         Color(0xFFf64f59)
          //       ],
          //       begin: FractionalOffset.centerLeft,
          //       end: FractionalOffset.centerRight,
          //     ),
          //   ),
          //   child: TextButton(
          //     child: new Text(
          //       'Proceed',
          //       style: TextStyle(
          //           fontSize: 18,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.white),
          //     ),
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => Homepage()));
          //       ref.push().set(name);
          //       var newkey = ref.push().key;
          //       Value.setString(name);
          //       print(newkey);
          //     },
          //   ),
          // )
          FutureBuilder(
                future: Authentication.initializeFirebase(context: context),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error initializing Firebase');
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return GoogleSignInButton();
                  }
                  return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      CustomColors.firebaseOrange,
                    ),
                  );
                },
              ),
        ],
      ),
    );
  }
}
