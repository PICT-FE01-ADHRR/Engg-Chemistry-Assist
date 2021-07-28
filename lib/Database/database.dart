import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_auth_ui/firebase_auth_ui.dart';

Future<void> addUser() async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Name": auth.currentUser!.displayName,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

Future<void> quizUnit1scoredb(unit1Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Unit1Quiz": unit1Quiz,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

Future<void> quizUnit2scoredb(unit2Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Unit2Quiz": unit2Quiz,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

Future<void> quizUnit3scoredb(unit3Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Unit3Quiz": unit3Quiz,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

Future<void> quizUnit4scoredb(unit4Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Unit4Quiz": unit4Quiz,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

Future<void> quizUnit5scoredb(unit5Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Unit5Quiz": unit5Quiz,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}

Future<void> quizUnit6scoredb(unit6Quiz) async {
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  usercollection
      .doc(uid)
      .set({
        "Unit6Quiz": unit6Quiz,
      }, SetOptions(merge: true))
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
  return;
}
