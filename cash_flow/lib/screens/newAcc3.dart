import 'package:flutter/material.dart';
import 'package:test1/screens/newAcc2.dart';
import 'package:test1/screens/newAcc4.dart';
import 'package:test1/screens/slash.dart';
import 'package:test1/widgets/newAccountHeader.dart';

import '../widgets/backButton.dart';
import '../widgets/input.dart';
import '../widgets/nextButton.dart';

// ignore: camel_case_types
class newAcc3 extends StatefulWidget {
  const newAcc3({super.key});

  @override
  State<newAcc3> createState() => _newAcc3State();
}

// ignore: camel_case_types
class _newAcc3State extends State<newAcc3> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          backBtn(
              upperMargin: screenHeight * 0.05, widgetName: const newAcc2()),
          const newAccHeader(
            color1: Color.fromARGB(255, 82, 183, 136),
            color2: Color.fromARGB(255, 82, 183, 136),
            color3: Color.fromARGB(255, 82, 183, 136),
            color4: Color.fromARGB(255, 175, 175, 175),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.18),
            child: Text(
              'Create a password',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: screenHeight * 0.03,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          InputBar(
            text: 'Password',
            upperMargin: screenHeight * 0.03,
          ),
          InputBar(
            text: 'Confirm password',
            upperMargin: screenHeight * 0.015,
          ),
          nextBtn(
              text: 'Next',
              upperMargin: screenHeight * 0.07,
              widgetName: const newAcc4()),
        ])));
  }
}
