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
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
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
              formKey: GlobalKey<FormState>(),
              text: 'Sign In',
              upperMargin: screenHeight * 0.07,
              widgetName: const MainScreen()),
        ])));
  }
}
