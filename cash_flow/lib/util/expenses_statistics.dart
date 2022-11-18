// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExpensesSt extends StatelessWidget {
  final String expInfo;
  final int spendings;
  final String info1;
  final String info2;
  final color;

  const ExpensesSt(
      {super.key,
      required this.expInfo,
      required this.spendings,
      required this.info1,
      required this.info2,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.white, width: 5),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(expInfo.toString(),
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 10),
            Text(spendings.toString()+" MDL",
                style: TextStyle(color: Colors.white, fontSize: 28)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(info1.toString(), style: TextStyle(color: Colors.white)),
                Text(info2.toString(), style: TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
