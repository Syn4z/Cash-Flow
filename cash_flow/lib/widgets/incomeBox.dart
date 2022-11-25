import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class incomeBox extends StatelessWidget {
  final String text;
  final String amount;
  const incomeBox({super.key, required this.text, required this.amount});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
        child: Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: screenHeight * 0.03),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.13),
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: screenWidth / 1.4),
                    child: Text(
                      '+\$$amount',
                      style: TextStyle(
                          color: Colors.red.shade600,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: screenHeight / 50, top: screenHeight / 50),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 3, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
