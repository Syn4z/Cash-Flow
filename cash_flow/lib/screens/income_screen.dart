// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class IncomeScreen extends StatelessWidget {
  const IncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15,
        shadowColor: Color.fromARGB(255, 99, 142, 53),
        title: Container(
        child: Text('Pocketfull'),),),
      drawer: MenuDrawer(),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bkg.jpg'), 
            fit: BoxFit.cover)
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0,sigmaY: 2.0),
          child: Container(
            decoration: BoxDecoration(color:Colors.white.withOpacity(0.0)),
          ),),
        ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 280),
        child: Row(
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              child: Icon(Icons.home),
              backgroundColor: Color.fromARGB(255, 59, 125, 62),
              onPressed:() {},),
            SizedBox(width: 10,),
            FloatingActionButton(
              heroTag: 'btn2',
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Color.fromARGB(255, 59, 125, 62), ),
          ],
        ),
      ) ,
    );
  }
}
