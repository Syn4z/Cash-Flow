import 'package:flutter/material.dart';
import 'package:test1/screens/newAcc1.dart';
import 'login.dart';

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
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                ),
              ),
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
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => newAcc1()));
          },
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
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
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
  }
}
