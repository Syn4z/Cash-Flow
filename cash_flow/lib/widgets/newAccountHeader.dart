import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

class newAccHeader extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  const newAccHeader(
      {super.key,
      required this.color1,
      required this.color2,
      required this.color3,
      required this.color4});

  Widget box(double w, double h, Color c) => Container(
        decoration: BoxDecoration(
            color: c,
            border: Border.all(
              color: c,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        width: w,
        height: h,
        // color: Colors.grey,
      );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
              top: screenHeight * 0.035, bottom: screenHeight * 0.01),
          child: Text('New Account',
              style: TextStyle(
                fontSize: screenHeight * 0.023,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              )),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              box(screenWidth * 0.163, screenHeight * 0.0035, color1),
              box(screenWidth * 0.163, screenHeight * 0.0035, color2),
              box(screenWidth * 0.163, screenHeight * 0.0035, color3),
              box(screenWidth * 0.163, screenHeight * 0.0035, color4),
            ],
          ),
        ),
      ],
    );
  }
}
