import 'package:flutter/material.dart';

class nextBtn extends StatelessWidget {
  final String text;
  final double upperMargin;
  final Widget widgetName;
  final GlobalKey<FormState>? formKey;
  final GlobalKey<FormState>? formKey2;
  final GlobalKey<FormState>? formKey3;
  const nextBtn(
      {super.key,
      required this.text,
      required this.upperMargin,
      required this.widgetName,
      this.formKey,
      this.formKey2,
      this.formKey3});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.7,
      height: screenHeight * 0.08,
      margin: EdgeInsets.only(top: upperMargin),
      child: ElevatedButton(
        onPressed: () {
          final isValidForm = formKey?.currentState?.validate();
          final isValidForm2 = formKey2?.currentState?.validate();
          final isValidForm3 = formKey3?.currentState?.validate();
          if ((isValidForm == true || isValidForm == null) &&
              (isValidForm2 == true || isValidForm2 == null) &&
              (isValidForm3 == true || isValidForm3 == null)) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => widgetName));
          } else {
            return;
          }
        },
        style: ElevatedButton.styleFrom(
            // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            backgroundColor: const Color.fromARGB(255, 82, 183, 136)),
        child: Text(
          text,
          style: TextStyle(
            fontSize: screenHeight * 0.037,
            color: const Color.fromARGB(255, 255, 255, 255),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
