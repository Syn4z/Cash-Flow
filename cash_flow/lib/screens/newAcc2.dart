import 'package:flutter/material.dart';
import 'package:test1/screens/newAcc1.dart';
import 'package:test1/screens/newAcc3.dart';
import 'package:test1/widgets/newAccountHeader.dart';

import '../widgets/backButton.dart';
import '../widgets/input.dart';
import '../widgets/nextButton.dart';

// ignore: camel_case_types
class newAcc2 extends StatefulWidget {
  const newAcc2({super.key});

  @override
  State<newAcc2> createState() => _newAcc2State();
}

// ignore: camel_case_types
class _newAcc2State extends State<newAcc2> {
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
              upperMargin: screenHeight * 0.05, widgetName: const newAcc1()),
          const newAccHeader(
            color1: Color.fromARGB(255, 82, 183, 136),
            color2: Color.fromARGB(255, 82, 183, 136),
            color3: Color.fromARGB(255, 175, 175, 175),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.09),
            child: ProfilePic(),
          ),
          nextBtn(
              text: 'Next',
              upperMargin: screenHeight * 0.05,
              widgetName: const newAcc3()),
        ])));
  }

  Widget bottomSheet() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: screenHeight * 0.03),
      width: screenWidth,
      height: screenHeight * 0.18,
      child: Column(
        children: <Widget>[
          Text("Choose profile picture",
              style: TextStyle(
                fontSize: screenHeight * 0.026,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
              )),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.camera),
                label: Text(
                  'Camera',
                  style: TextStyle(
                      fontFamily: 'Montserrat', fontSize: screenHeight * 0.02),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 82, 183, 136)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      vertical: screenHeight * 0.02,
                      horizontal: screenWidth * 0.07)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget ProfilePic() {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(children: <Widget>[
        Container(
            margin: EdgeInsets.only(top: screenWidth * 0.07),
            child: CircleAvatar(
              radius: screenWidth * 0.37,
              backgroundColor: const Color.fromARGB(255, 211, 211, 211),
            )),
        Positioned(
            top: screenWidth * 0.21,
            left: screenWidth * 0.121,
            child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context, builder: ((builder) => bottomSheet()));
                },
                child: Icon(
                  Icons.camera_alt,
                  color: const Color.fromARGB(255, 82, 183, 136),
                  size: screenWidth * 0.5,
                )))
      ]),
    );
  }
}
