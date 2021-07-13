import '/Developers/developer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ListviewItems.dart';
import '/Google_Login/utils/authentication.dart';
import 'login_page.dart';
// import 'login_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late User _user;

  @override
  void initState() {
    _user = widget._user;
    super.initState();
  }

  // Route _routeToLoginPage() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => Loginpage(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       var begin = Offset(-1.0, 0.0);
  //       var end = Offset.zero;
  //       var curve = Curves.ease;
  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(
          child: Container(
            color: Color(0xFF21096e),
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(_user.photoURL!)),
                          SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _user.displayName!,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                              Text(
                                _user.email!,
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.login_sharp),
                  title: Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white),
                  ),
                  // onTap: () async {
                  //   await Authentication.signOut(context: context);
                  //   Navigator.push(
                  //     context,
                  //      MaterialPageRoute(builder: (context) => Loginpage()),
                  //   );
                  // },
                  onTap: () async{
                    await Authentication.signOut(context: context);
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Loginpage()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.amp_stories_rounded),
                  title: Text(
                    'Developers',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Developers()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 20,
          shadowColor: Colors.black,
          title: Text(
            'ENGGChemAssist',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Color(0xFF0a1931),
        ),
        body: Column(
          children: [
            Container(
              height: size.height * .27,
              width: double.infinity,
              // margin: EdgeInsets.only(top: 50),
              // color: Colors.grey,

              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Positioned(
                    top: 38,
                    left: 20,
                    child: Container(
                      // color: Colors.black,
                      margin: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Welcome, ' + _user.displayName!,
                          style:
                              TextStyle(color: Color(0xFFfdfaf6), fontSize: 25),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 93,
                    left: 20,
                    child: Container(
                      // color: Colors.black,
                      margin: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(direction: Axis.horizontal, children: [
                          //Stackoverflow
                          RichText(
                            textAlign: TextAlign.left,
                            softWrap: true,
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text:
                                      "Get the Unitwise study material & quizzes ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17)),
                            ]),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  //Three dots
                  Positioned(
                    top: 18,
                    left: 35,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 13,
                    left: 10,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 33,
                    left: 12,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 18,
                    right: 35,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 13,
                    right: 10,
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 33,
                    right: 12,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: Color(0xFFf9f3f3),
                    // gradient: LinearGradient(colors: [
                    //   Colors.white.withOpacity(0.65),
                    //   Colors.white.withOpacity(0.65),
                    // ]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              // MyList(),
              ListView.builder(
                itemBuilder: (context, index) => MyList(
                  itemIndex: index,
                  itemNum: itemsList[index],
                ),
                itemCount: itemsList.length,
              )
            ]))
          ],
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final int itemIndex;
  final ListdisplayText itemNum;

  MyList({required this.itemIndex, required this.itemNum});
  // void printinfo() {
  //   print(size.height);
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // var padding?_required = size.height;
    // ignore: unused_element
    void printinfo() {
      print(size.height);
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      // color: Colors.blueAccent,
      height: size.height * 0.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width * 0.88,
            // width: double.infinity,
            height: size.height * 0.18,
            decoration: BoxDecoration(
                // color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(40)),
            child: GestureDetector(
              onTap: () {
                // print(size.height);
                // print(size.width);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => funcList[itemIndex]));
              },
              child: Container(
                height: size.height * 0.18,
                width: size.width * 0.923,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
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
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -size.height * 0.0311,
            left: 0,
            child: Container(
              // alignment: Alignment.centerLeft,
              height: size.height * 0.17,
              width: size.width * 0.85,

              child: Column(
                children: [
                  GestureDetector(
                    child: Text(
                      itemNum.title,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    onTap: () {
                      // print('tapped');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => funcList[itemIndex]),
                      );
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, left: 20),
                      child: GestureDetector(
                        child: Text(
                          itemNum.chapter,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        onTap: () {
                          // print('tapped');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => funcList[itemIndex]),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
