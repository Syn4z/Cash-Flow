import 'package:flutter/material.dart';

class InputBar extends StatelessWidget {
  final String text;
  final double upperMargin;
  const InputBar({super.key, required this.text, required this.upperMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 270,
        height: 60,
        margin: EdgeInsets.only(top: upperMargin),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 30, top: 50),
              border: const OutlineInputBorder(),
              hintText: text,
              hintStyle: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                color: Color(0x4D000000),
              )),
        ));
  }
}
