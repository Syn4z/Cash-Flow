import 'package:flutter/material.dart';
import 'package:test1/screens/newAcc2.dart';
import 'package:test1/screens/slash.dart';
import 'package:test1/widgets/newAccountHeader.dart';

import '../widgets/backButton.dart';
import '../widgets/input.dart';
import '../widgets/nextButton.dart';

// ignore: camel_case_types
class newAcc1 extends StatefulWidget {
  const newAcc1({super.key});

  @override
  State<newAcc1> createState() => _newAcc1State();
}

// ignore: camel_case_types
class _newAcc1State extends State<newAcc1> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          backBtn(upperMargin: screenHeight * 0.05, widgetName: const Slash()),
          newAccHeader(
            color1: Color.fromARGB(255, 82, 183, 136),
            color2: Color.fromARGB(255, 175, 175, 175),
            color3: Color.fromARGB(255, 175, 175, 175),
          ),
          Container(
            width: screenWidth * 0.7,
            margin: EdgeInsets.only(top: screenHeight * 0.06),
            child: Image.asset('assets/images/logo.png'),
          ),
          InputBar(
            text: 'Email',
            upperMargin: screenHeight * 0.016,
          ),
          InputBar(
            text: 'Username',
            upperMargin: screenHeight * 0.015,
          ),
          InputBar(
            text: 'Password',
            upperMargin: screenHeight * 0.015,
          ),
          nextBtn(
              text: 'Next',
              upperMargin: screenHeight * 0.019,
              widgetName: newAcc2()),
        ])));
  }
}
