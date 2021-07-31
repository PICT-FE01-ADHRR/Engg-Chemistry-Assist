import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
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
                'Engineering Chemistry Study Assist',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 1.5,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: size.height*0.15,
          ),
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
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            height: size.height * .15,
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
