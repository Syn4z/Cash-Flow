// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test1/screens/expenses_screen.dart';
import 'package:test1/screens/main_screen.dart';


void main() {
  runApp(Pocketful());
}

class Pocketful extends StatelessWidget {
  const Pocketful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context) => MainScreen(),
        '/add':(context) => ExpensesScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(appBarTheme: 
      AppBarTheme(color: Color.fromARGB(255, 59, 125, 62))),
    );
  }
}
