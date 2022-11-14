import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/slash.dart';

import '../widgets/backButton.dart';
import '../widgets/nextButton.dart';
import '../widgets/input.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          backBtn(upperMargin: screenHeight * 0.05, widgetName: Slash()),
          Container(
            width: screenWidth * 0.7,
            height: screenHeight * 0.08,
            margin: EdgeInsets.only(top: screenHeight * 0.13),
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(
                    right: screenWidth * 0.05,
                  ),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 6),
              icon: Image.asset('assets/images/google_icon.png'),
              label: Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  color: const Color.fromARGB(255, 82, 183, 136),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: screenHeight * 0.07),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0x00ffffff),
                    shadowColor: const Color(0x00ffffff),
                  ),
                  child: Text('or another email',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth * 0.042,
                          color: const Color.fromARGB(255, 82, 183, 136))))),
          const InputBar(
            text: 'Your email',
            upperMargin: 60,
          ),
          const InputBar(
            text: 'Your password',
            upperMargin: 18,
          ),
          const nextBtn(
              text: 'Sign In', upperMargin: 42, widgetName: MainScreen()),
        ])));
  }
}
