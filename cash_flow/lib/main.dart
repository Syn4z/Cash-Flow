// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test1/screens/main_screen.dart';

void main() {
  runApp(Pocketful());
}

class Pocketful extends StatelessWidget {
  const Pocketful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.green)),
    );
  }
}
