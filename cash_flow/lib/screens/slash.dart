import 'package:flutter/material.dart';
<<<<<<< HEAD

class SlashScr extends StatefulWidget {
  const SlashScr({super.key});
  @override
  State<SlashScr> createState() => _SlashScrState();
}

class _SlashScrState extends State<SlashScr> {
  @override
  double screenWidth = WidgetsBinding.instance.window.physicalSize.width;
  double screenHeight = WidgetsBinding.instance.window.physicalSize.height;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
          // color: Colors.green,
          width: double.infinity,
          height: screenHeight * 0.32,
          // margin: EdgeInsets.only(top: 60, bottom: 30),
          padding: const EdgeInsets.only(top: 120),
          child: Center(
              child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(children: [
              TextSpan(
                text: 'Manage your finances with',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff2196F3),
                  fontFamily: 'Montserrat',
                ),
              ),
              TextSpan(
                text: '\nPocketFul',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff2196F3),
=======
import 'package:test1/screens/newAcc1.dart';
import 'login.dart';

class Slash extends StatefulWidget {
  const Slash({super.key});
  @override
  State<Slash> createState() => _SlashState();
}

class _SlashState extends State<Slash> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(
              margin: EdgeInsets.only(
                  top: screenHeight * 0.15, bottom: screenHeight * 0.1),
              width: screenWidth,
              // height: screenHeight * 0.5,
              // padding: const EdgeInsets.only(top: 120, bottom: 10),
              child: Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Manage your finances with',
                    style: TextStyle(
                      fontSize: screenHeight * 0.06,
                      color: const Color.fromARGB(255, 82, 183, 136),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  TextSpan(
                    text: '\nPocketFul',
                    style: TextStyle(
                      fontSize: screenHeight * 0.06,
                      color: const Color.fromARGB(255, 82, 183, 136),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ]),
              ))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.1),
            child: Image.asset('assets/images/img1.png'),
            // )),
          ),
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.15,
            margin: EdgeInsets.only(top: screenHeight * 0.1),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => newAcc1()));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: screenHeight * 0.01),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  backgroundColor: const Color.fromARGB(255, 82, 183, 136)),
              child: Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: screenHeight * 0.05,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.15,
            margin: EdgeInsets.only(
              top: screenHeight * 0.05,
              bottom: screenHeight * 0.1,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: screenHeight * 0.01),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 25),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: screenHeight * 0.07,
                  color: Color.fromARGB(255, 82, 183, 136),
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                ),
              ),
<<<<<<< HEAD
            ]),
          ))),
      Container(
        margin: EdgeInsets.only(top: screenHeight * 0.04),
        child: Image.asset('assets/images/img1.png'),
      ),
      Container(
        width: 330,
        height: 63,
        margin: EdgeInsets.only(top: 67),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Create a new account',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
          ),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
              backgroundColor: Color(0xCC2196F3)),
        ),
      ),
      Container(
        width: 330,
        height: 63,
        margin: EdgeInsets.only(top: 20),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Sign In',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 33, 149, 243),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w800,
            ),
          ),
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              shadowColor: Color.fromARGB(255, 255, 255, 255),
              elevation: 25),
        ),
      ),
    ]));
=======
            ),
          ),
        ]));
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40
  }
}
