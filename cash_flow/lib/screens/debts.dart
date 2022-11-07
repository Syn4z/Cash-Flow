// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/shared/menu_drawer.dart';

class DebtsScreen extends StatelessWidget {
  const DebtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,149,213,178),
      appBar: AppBar(
        actions: [
          Transform.scale(
            scale:2.1,
            child: IconButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  }, icon: Image.asset('assets/logo.png'),)
        )],
        elevation: 15,
        shadowColor: Color.fromARGB(255, 45,106,79),
        title: Container(
        child: Text('Debts',
        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold ),),
        ),),
      drawer: MenuDrawer(),
      body:  Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0,sigmaY: 0),
          child: Container(
            decoration: BoxDecoration(color:Colors.white.withOpacity(0.0)),
          ),),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
              heroTag: 'Add',
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 45,106,79),
            ),
    );
  }
}
