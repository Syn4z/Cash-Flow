// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/updateIncome.dart';
import 'package:test1/shared/menu_drawer.dart';
import 'package:test1/widgets/incomeBox.dart';

import 'addIncome.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void _navigateToUpdateExpenseScreen(BuildContext context) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateIncomeScreen()));
    }

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 228, 199),
      appBar: AppBar(
        actions: [
          Transform.scale(
              scale: 2.1,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                icon: Image.asset('assets/images/logo.png'),
              ))
        ],
        elevation: 15,
        shadowColor: Color.fromARGB(255, 99, 142, 53),
        title: Container(
          child: Text(
            'Income',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: MenuDrawer(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(bottom: screenHeight * 0.04),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
            // onTap: () {
            //     _navigateToUpdateExpenseScreen(context);
            //   },
          ),
        ),
        incomeBox(text: 'Salary', amount: '300'),
        incomeBox(text: 'Cashback', amount: '4'),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: 'Add',
        onPressed: () {
          _navigateToAddIncomeScreenScreen(context);
        },
        backgroundColor: Color.fromARGB(255, 45, 106, 79),
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigateToAddIncomeScreenScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AddIncomeScreen()));
  }
}
