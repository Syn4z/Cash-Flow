// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Transform.scale(
              scale: 2.1,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/logo.png'),
              ))
        ],
        elevation: 15,
        shadowColor: Color.fromARGB(255,64,145,108),
        title: Container(
          child: Text('About',
          style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold ),),
        ),
      ),
      drawer: MenuDrawer(),
      body: Container(
        
        decoration: BoxDecoration(),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
