import 'package:flutter/material.dart';

class nextBtn extends StatelessWidget {
  final String text;
  final double upperMargin;
  final Widget widgetName;
  const nextBtn(
      {super.key,
      required this.text,
      required this.upperMargin,
      required this.widgetName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.7,
      height: screenHeight * 0.16,
      margin: EdgeInsets.only(top: upperMargin),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widgetName));
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            backgroundColor: const Color.fromARGB(255, 82, 183, 136)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: screenHeight * 0.065,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
