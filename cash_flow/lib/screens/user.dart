// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('User Account',
        style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold ),)),
        
        body: Container(
          padding: const EdgeInsets.only(left: 16,top: 25,right: 16),
          child: 
          Container(
            child: ListView(
              children: [
                Text("Your Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
                SizedBox(height: 30),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4, 
                            color : Colors.white 
                          ),
                          boxShadow:[ BoxShadow(
                            spreadRadius: 2,blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0,10)

                          )],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage('https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60')
                          )
                          
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                        height: 40,
                        width: 40,
                        
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 183,228,199),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 4)
                        ),
                        child: Icon(Icons.edit_outlined,color: Colors.white),
                        
                      ))
                    ],
                  ),
                  
                ),
                SizedBox(height: 10),
                Text('John Doe'),
                SizedBox(height: 10),
                Text('john.doe.@email.com'),
                Divider(thickness: 1, height: 30,),
                SizedBox(height: 35),
                TextField(decoration:InputDecoration(
                  hintText: 'Goals Journal',
                  
                )),

              ],
            )
          ),
          
          
        ),
        backgroundColor: Colors.white,
      );
}
