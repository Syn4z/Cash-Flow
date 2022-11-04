<<<<<<< HEAD
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
=======
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test1/shared/side_actions.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
=======
    return Scaffold(
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40
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
        title: Container(
<<<<<<< HEAD
          child: Text(
            'Pocketfull',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ),
=======
          child: Text('Pocketfull'),
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40
        ),
      ),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
<<<<<<< HEAD
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color.fromARGB(255,116,198,157)
            ),
          )
        ],
=======
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background.jpg'),
          fit: BoxFit.cover,
        )),
        child: Center(
            child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white70,
          ),
          child: Text(
            'Manage your expenses wisely and \nplan your future desired spendings ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, shadows: const [
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 1.0,
                color: Colors.grey,
              )
            ]),
          ),
        )),
>>>>>>> 70d16aa03025913588f12050e4a7a5084db81e40
      ),
    );
  }
}
