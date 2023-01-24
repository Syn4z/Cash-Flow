// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/screens/addExpense.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/updateExpense.dart';
import 'package:test1/shared/menu_drawer.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    void _navigateToUpdateExpenseScreen(BuildContext context) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => UpdateExpenseScreen()));
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183,228,199),
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
            'Expenses',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: MenuDrawer(),
      body: Stack(children: [
        Container(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
          ),
        ),
        ListView(
          padding: EdgeInsets.only(top: screenHeight / 25),
          children: <Widget>[
            ListTile(
                title: InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: screenHeight / 50, top: screenHeight / 50),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
                child: Stack(children: [
                  Icon(Icons.directions_bus),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 9),
                    child: Text(
                      'Public Transit',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: screenWidth / 1.4),
                      child: Text(
                        '-\$2.75',
                        style: TextStyle(
                            color: Colors.red.shade600,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                ]),
              ),
              onTap: () {
                _navigateToUpdateExpenseScreen(context);
              },
            )),
            ListTile(
                title: InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: screenHeight / 50, top: screenHeight / 50),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
                child: Stack(children: [
                  Icon(Icons.restaurant),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 9),
                    child: Text(
                      'Tiramisu',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: screenWidth / 1.4),
                      child: Text(
                        '-\$33.99',
                        style: TextStyle(
                            color: Colors.red.shade600,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                ]),
              ),
              onTap: () {
                _navigateToUpdateExpenseScreen(context);
              },
            )),
            ListTile(
                title: InkWell(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: screenHeight / 50, top: screenHeight / 50),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3, color: Colors.white),
                  ),
                ),
                child: Stack(children: [
                  Icon(Icons.school),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth / 9),
                    child: Text(
                      'College books',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: screenWidth / 1.4),
                      child: Text(
                        '-\$249.99',
                        style: TextStyle(
                            color: Colors.red.shade600,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                ]),
              ),
              onTap: () {
                _navigateToUpdateExpenseScreen(context);
              },
            )),
          ],
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: 'Add',
        onPressed: () {
          _navigateToAddExpenseScreenScreen(context);
        },
        backgroundColor: Color.fromARGB(255, 45, 106, 79),
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigateToAddExpenseScreenScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => AddExpenseScreen()));
  }
}
