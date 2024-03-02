import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class Developer {
  final String name;
  final String image;
  final Color color;
  final String linkedUrl;
  final String gitHubUrl;
  final String instagramUrl;
  final String emailUrl;

  const Developer({
    required this.linkedUrl,
    required this.gitHubUrl,
    required this.emailUrl,
    required this.name,
    required this.image,
    required this.instagramUrl,
    required this.color,
  });
}

const developerList = [
  Developer(
      name: 'Rohan Doshi',
      image: 'assets/images/Rohan.jpg',
      gitHubUrl: "https://github.com/RohanDoshi21",
      linkedUrl: "https://www.linkedin.com/in/rohan-doshi21/",
      emailUrl: "rohan.doshi02@gmail.com",
      instagramUrl: "https://www.instagram.com/rohan.doshi02",
      color: Colors.transparent),
  Developer(
      name: 'Dinesh Nehete',
      image: 'assets/images/Dinesh.jpg',
      gitHubUrl: "https://github.com/dineshNehete",
      linkedUrl: "https://www.linkedin.com/in/dinesh-nehete/",
      emailUrl: "dinesh.g.nehete@gmail.com",
      instagramUrl: "http://instagram.com/dinesh.nehete_/",
      color: Colors.transparent),
  Developer(
      name: 'Harsh Bhat',
      image: 'assets/images/Harsh.jpeg',
      gitHubUrl: "https://github.com/Harususan",
      linkedUrl: "https://www.linkedin.com/in/harsh-bhat-40867320a/",
      emailUrl: "harshbhat83@gmail.com",
      instagramUrl: "https://www.instagram.com/_harusu_san_/",
      color: Colors.transparent),
  Developer(
      name: 'Rohit Bhise',
      image: 'assets/images/Rohit.jpg',
      gitHubUrl: "https://github.com/rohitbhise",
      linkedUrl: "https://www.linkedin.com/in/rohit-bhise-803b07216/",
      emailUrl: "rohitbhise2704@gmail.com",
      instagramUrl: "https://www.instagram.com/rohitbhise2704/",
      color: Colors.transparent),
  Developer(
      name: 'Arnav Waghulade',
      image: 'assets/images/Arnav.jpeg',
      gitHubUrl: "https://github.com/arnav55555",
      linkedUrl: "https://www.linkedin.com/in/arnav-waghulade-473788206/",
      emailUrl: "arnav.waghulade@gmail.com",
      instagramUrl: "https://www.instagram.com/_arnav_5/",
      color: Colors.transparent),
];

class Developers extends StatefulWidget {
  const Developers({super.key});

  @override
  _DevelopersState createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers> {
  final _pageController = PageController(viewportFraction: 0.78);
  final _pageNotifier = ValueNotifier(0.0);

  void _listener() {
    _pageNotifier.value = _pageController.page!;
    setState(() {});
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.addListener(_listener);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_listener);
    _pageController.dispose();
    _pageNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: const Text(
          'Developers',
          style: TextStyle(fontSize: 25),
        ),
        // color: Color(0xFF21096e),
        backgroundColor: const Color(0xFF21096e),
      ),
      body: Container(
        color: const Color(0xFF21096e),
        child: builder(),
      ),
    );
  }

  ListView builder() {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      itemCount: developerList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          height: size.height * 0.7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: size.width * 0.90,
                height: size.height * 0.7,
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
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
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: SizedBox(
                            width: double.infinity,
                            height: 150,
                            child: Container(
                              alignment: const Alignment(0.0, 2.5),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(developerList[index].image),
                                radius: 60.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Text(
                          developerList[index].name,
                          style: const TextStyle(
                              fontSize: 25.0,
                              color: Colors.blueGrey,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "PICT, Pune",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black45,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "FE01",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black45,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "App Developer",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black45,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w300),
                        ),
                        Card(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          _launchURL(
                                              developerList[index].gitHubUrl);
                                        },
                                        icon: Image.asset(
                                          "assets/images/github.png",
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          _launchURL(developerList[index]
                                              .instagramUrl);
                                        },
                                        icon: Image.asset(
                                          "assets/images/instagram.png",
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          _launchURL(
                                              developerList[index].linkedUrl);
                                        },
                                        icon: Image.asset(
                                          "assets/images/linkedin.png",
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          launchMailto(
                                              developerList[index].emailUrl);
                                        },
                                        icon: Image.asset(
                                          "assets/images/gmail.png",
                                          height: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _launchURL(String url) {
    launch(url);
  }

  launchMailto(String email) {
    final mailtoLink = Mailto(
      to: [email],
      cc: [],
      subject: 'App Review',
      body: "",
    );
    launch('$mailtoLink');
  }
}
