import 'package:flutter/material.dart';

class nextBtn extends StatelessWidget {
  final String text;
  final double upperMargin;
  final Widget widgetName;
  final GlobalKey<FormState>? formKey;
  final GlobalKey<FormState>? formKey2;
  const nextBtn(
      {super.key,
      required this.text,
      required this.upperMargin,
      required this.widgetName,
      this.formKey,
      this.formKey2});

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
          final isValidForm = formKey?.currentState?.validate();
          final isValidForm2 = formKey2?.currentState?.validate();
          if (isValidForm2 == null) {
            if (isValidForm == null || isValidForm == true) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => widgetName));
            } else {
              return;
            }
          } else if (isValidForm == true && isValidForm2 == true) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => widgetName));
          } else {
            return;
          }
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
