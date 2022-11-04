import 'package:flutter/material.dart';
import 'package:test1/screens/expenses_screen.dart';
import 'package:test1/screens/main_screen.dart';
import 'package:test1/screens/slash_screen.dart';
import 'package:test1/screens/login.dart';

void main() {
  runApp(Pocketful());
}

class Pocketful extends StatelessWidget {
  const Pocketful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SlashScr(),
        '/add': (context) => ExpensesScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 59, 125, 62))),
    );
  }
}
