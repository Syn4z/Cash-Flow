import 'package:flutter/material.dart';
import 'package:test1/main.dart';
import 'package:test1/screens/newAcc2.dart';
import 'package:test1/screens/slash.dart';
import 'package:test1/widgets/newAccountHeader.dart';

import '../widgets/backButton.dart';
import '../widgets/input.dart';
import '../widgets/nextButton.dart';
import 'main.dart';
import 'newAcc3.dart';

// ignore: camel_case_types
class newAcc4 extends StatefulWidget {
  const newAcc4({super.key});

  @override
  State<newAcc4> createState() => _newAcc4State();
}

// ignore: camel_case_types
class _newAcc4State extends State<newAcc4> {
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
              upperMargin: screenHeight * 0.05, widgetName: const newAcc3()),
          const newAccHeader(
            color1: Color.fromARGB(255, 82, 183, 136),
            color2: Color.fromARGB(255, 82, 183, 136),
            color3: Color.fromARGB(255, 82, 183, 136),
            color4: Color.fromARGB(255, 82, 183, 136),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: screenHeight * 0.2, right: screenWidth * 0.02),
                child: Text(
                  'Done!',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: screenHeight * 0.06,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.18),
                height: screenHeight * 0.07,
                child: Image.asset('assets/images/done.png'),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.01),
            child: Text(
              'Your account has been successfully created!',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: screenHeight * 0.027,
                fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          nextBtn(
              text: 'Sign In',
              upperMargin: screenHeight * 0.07,
              widgetName: const MainScreen()),
        ])));
  }
}
