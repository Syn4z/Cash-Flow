import 'package:flutter/material.dart';

// ignore: camel_case_types
class backBtn extends StatelessWidget {
  final double upperMargin;
  final Widget widgetName;
  const backBtn(
      {super.key, required this.upperMargin, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.095,
      margin: EdgeInsets.only(top: upperMargin, right: screenWidth * 0.61),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widgetName));
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0x002196F3),
            shadowColor: const Color(0x00ffffff)),
        child: Image.asset('assets/images/back.png'),
      ),
    );
  }
}
