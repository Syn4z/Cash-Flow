// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/shared/menu_drawer.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 149, 213, 178),
      appBar: AppBar(
        actions: [
          Transform.scale(
            scale:2.1,
            child: IconButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  }, icon: Image.asset('assets/images/logo.png'),)
        )],
        elevation: 15,
        shadowColor: Color.fromARGB(255, 99, 142, 53),
        title: Container(
        child: Text('Income',
        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold ),),),),
      drawer: MenuDrawer(),
      body:  Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: 'Add',
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 45, 106, 79),
      ),
    );
  }
}
