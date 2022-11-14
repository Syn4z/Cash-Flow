import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  final String text;
  final double upperMargin;
  const InputBar({super.key, required this.text, required this.upperMargin});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth * 0.7,
        height: screenHeight * 0.16,
        margin: EdgeInsets.only(top: upperMargin),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: screenWidth * 0.06, top: 50),
              border: const OutlineInputBorder(),
              hintText: text,
              hintStyle: TextStyle(
                fontFamily: 'Inter',
                fontSize: screenHeight * 0.042,
                color: const Color(0x4D000000),
              )),
        ));
  }
}
