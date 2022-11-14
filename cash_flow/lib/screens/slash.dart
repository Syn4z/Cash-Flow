import 'package:flutter/material.dart';
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
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(
              margin: EdgeInsets.only(
                  top: screenHeight * 0.01, bottom: screenHeight * 0.03),
              width: screenWidth,
              child: Center(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Manage your finances with',
                    style: TextStyle(
                      fontSize: screenHeight * 0.028,
                      color: const Color.fromARGB(255, 82, 183, 136),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  TextSpan(
                    text: '\nPocketFul',
                    style: TextStyle(
                      fontSize: screenHeight * 0.03,
                      color: const Color.fromARGB(255, 82, 183, 136),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ]),
              ))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.04),
            child: Image.asset('assets/images/img1.png'),
            // )),
          ),
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.09,
            margin: EdgeInsets.only(top: screenHeight * 0.05),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => newAcc1()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  backgroundColor: const Color.fromARGB(255, 82, 183, 136)),
              child: Text(
                'Create a new account',
                style: TextStyle(
                  fontSize: screenHeight * 0.023,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.09,
            margin: EdgeInsets.only(top: screenHeight * 0.025),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  elevation: 25),
              child: Text(
                'Sign In',
                style: TextStyle(
                  fontSize: screenHeight * 0.04,
                  color: Color.fromARGB(255, 82, 183, 136),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ]));
  }
}
