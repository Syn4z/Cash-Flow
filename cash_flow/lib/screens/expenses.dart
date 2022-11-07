// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/shared/menu_bottom.dart';
import 'package:test1/shared/menu_drawer.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Transform.scale(
                scale: 2.1,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  icon: Image.asset('assets/logo.png'),
                ))
          ],
          elevation: 15,
          shadowColor: Color.fromARGB(255, 99, 142, 53),
          title: Text('Expenses')),
      drawer: MenuDrawer(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bkg.jpg'), fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 280),
        child: Row(
          children: [
            FloatingActionButton(
              heroTag: 'Home',
              child: Icon(
                Icons.home,
                color: Colors.green,
              ),
              backgroundColor: Colors.white,
              onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));},
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              heroTag: 'Add',
              onPressed: () {
                print('you clicked me');
              },
              child: Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 59, 125, 62),
            ),
          ],
        ),
      ),
    );
  }
}
