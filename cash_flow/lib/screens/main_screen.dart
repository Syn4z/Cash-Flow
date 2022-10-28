// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../shared/menu_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pocketfull')),
      drawer: MenuDrawer(),
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
                blurRadius: 2.0,
                color: Colors.grey,
              )
            ]),
          ),
        )),
      ),
    );
  }
}
