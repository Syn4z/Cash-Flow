import 'package:flutter/material.dart';

import '../widgets/blueButton.dart';
import '../widgets/input.dart';
import 'package:test1/screens/newAcc1.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double screenWidth = WidgetsBinding.instance.window.physicalSize.width;
  double screenHeight = WidgetsBinding.instance.window.physicalSize.height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Container(
            width: 270,
            height: 63,
            margin: const EdgeInsets.only(top: 200),
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 40.0, bottom: 20.0, left: 18.0),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 6),
              icon: Image.asset('assets/images/google_icon.png'),
              label: const Text(
                'Sign in with Google',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 33, 149, 243),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 52),
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('or another email',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color.fromARGB(255, 33, 149, 243))),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0x00ffffff),
                    shadowColor: Color(0x00ffffff),
                  ))),
          InputBar(
            text: 'Your email',
            upperMargin: 60,
          ),
          InputBar(
            text: 'Your password',
            upperMargin: 18,
          ),
          blueBtn(text: 'Sign In', upperMargin: 42, widgetName: newAcc1()),
        ])));
  }
}
