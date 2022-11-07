// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:test1/shared/side_actions.dart';
import '../shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
            'Pocketful',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          ),
        ),
      ),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 116, 198, 157),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 45, 106, 79).withOpacity(0.1),
                        BlendMode.dstATop),
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fitHeight,
                  )),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Pocketful",
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width *.6,
                      child: Text("Manage your expenses wisely and enjoy your spendings",
                      style: TextStyle(fontWeight: FontWeight.bold ,fontStyle: FontStyle.italic),),
                    ),
                    SizedBox(height: size.height *.2),
                    Wrap(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow:[
                              BoxShadow(
                                offset: Offset(0,17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Color.fromARGB(255,45, 106, 79)
                              )
                            ]
                        ),
                        child: Row(


                          children:<Widget> [
                            Container(
                            height: 250,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 45, 106, 79),
                              shape: BoxShape.circle
                            ),
                            child: Icon(Icons.analytics_outlined,color: Colors.white
                            ),
                            ),
                            Text("Expenses Statistics",
                            style: Theme.of(context).textTheme.titleLarge,)],
                         ),
                      )],
                    ),
                    SizedBox(height: 20),
                    Text("Your goals",
                    style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [BoxShadow(
                          offset: Offset(0,17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: Color.fromARGB(255, 45, 106, 79)
                        )],
                      ),
                      child: Row(
                        children: <Widget>[Image.asset('assets/images/goa.png')],
                      ),
                      )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
