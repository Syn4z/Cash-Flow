import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class InputBar extends StatelessWidget {
  final bool? obscure;
  final bool? passwordLogin;
  final bool? passwordRegistration;
  final bool? email;
  final bool? username;
  final String text;
  final double upperMargin;
  final GlobalKey<FormState>? formKey;
  const InputBar(
      {super.key,
      required this.text,
      required this.upperMargin,
      this.obscure,
      this.passwordLogin,
      this.passwordRegistration,
      this.email,
      this.formKey,
      this.username});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKey,
        child: Container(
            width: screenWidth * 0.7,
            height: screenHeight * 0.23,
            margin: EdgeInsets.only(top: upperMargin),
            child: TextFormField(
              obscureText: obscure ?? false,
              validator: (value) {
                if (passwordRegistration == true) {
                  if (value == null || value.length < 8) {
                    return 'Enter min. 8 characters';
                  } else {
                    return null;
                  }
                } else if (email == true) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                } else if (username == true) {
                  if (value == null || value.length < 1) {
                    return 'Enter username';
                  } else {
                    return null;
                  }
                } else {
                  return null;
                }
              },
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
            )));
  }
}
