import 'package:flutter/material.dart';
import 'package:test1/screens/expenses.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/slash.dart';
<<<<<<< HEAD
=======
import 'package:test1/screens/login.dart';
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40

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
        '/': (context) => Slash(),
        '/add': (context) => ExpensesScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(
<<<<<<< HEAD
          appBarTheme: AppBarTheme(color: Color.fromARGB(255,64,145,108))),
=======
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 59, 125, 62)),
          fontFamily: 'Montserrat'),
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40
    );
  }
}
