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
  final key = GlobalKey<FormState>();
  final key2 = GlobalKey<FormState>();
  final key3 = GlobalKey<FormState>();
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
          const newAccHeader(
            color1: Color.fromARGB(255, 82, 183, 136),
            color2: Color.fromARGB(255, 175, 175, 175),
            color3: Color.fromARGB(255, 175, 175, 175),
          ),
          Container(
            width: screenWidth * 0.65,
            margin: EdgeInsets.only(top: screenHeight * 0.025),
            child: Image.asset('assets/images/logo.png'),
          ),
          InputBar(
            formKey: key,
            email: true,
            text: 'Your email',
            upperMargin: screenHeight * 0.002,
          ),
          InputBar(
            username: true,
            formKey: key3,
            text: 'Username',
            upperMargin: screenHeight * 0.007,
          ),
          InputBar(
            formKey: key2,
            passwordRegistration: true,
            obscure: true,
            text: 'Password',
            upperMargin: screenHeight * 0.007,
          ),
          nextBtn(
              formKey: key,
              formKey2: key2,
              formKey3: key3,
              text: 'Next',
              upperMargin: screenHeight * 0.019,
              widgetName: const newAcc2()),
        ])));
  }
}
