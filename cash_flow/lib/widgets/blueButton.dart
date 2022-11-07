import 'package:flutter/material.dart';

class blueBtn extends StatelessWidget {
  final String text;
  final double upperMargin;
  final Widget widgetName;
  const blueBtn(
      {super.key,
      required this.text,
      required this.upperMargin,
      required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 60,
      margin: EdgeInsets.only(top: upperMargin),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => widgetName));
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        style: ElevatedButton.styleFrom(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            backgroundColor: const Color(0xCC2196F3)),
      ),
    );
  }
}
