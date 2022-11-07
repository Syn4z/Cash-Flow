// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('User Account')),
        body: Padding(
          padding: const EdgeInsets.all(100),
          child: 
          Container(
            child: Image.asset(
              'assets/user.png',
              height: 200,
              width: 200,
            ),
          ),
          
          
        ),
        backgroundColor: Colors.grey,
      );
}
