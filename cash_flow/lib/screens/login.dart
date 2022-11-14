import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/slash.dart';

import '../widgets/backButton.dart';
import '../widgets/nextButton.dart';
import '../widgets/input.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final key = GlobalKey<FormState>();
  final key2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          backBtn(upperMargin: screenHeight * 0.05, widgetName: const Slash()),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.04),
            child: Image.asset('assets/images/logo.png'),
          ),
          InputBar(
            formKey: key,
            email: true,
            text: 'Your email',
            upperMargin: screenHeight * 0.005,
          ),
          InputBar(
            formKey: key2,
            passwordRegistration: true,
            obscure: true,
            text: 'Your password',
            upperMargin: screenHeight * 0.02,
          ),
          nextBtn(
              formKey: key,
              formKey2: key2,
              text: 'Sign In',
              upperMargin: screenHeight * 0.02,
              widgetName: const MainScreen()),
        ])));
  }
}
