// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test1/screens/expenses.dart';
import 'package:test1/screens/main.dart';

class AddIncomeScreen extends StatelessWidget {
  const AddIncomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 183, 228, 199),
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
          shadowColor: Color.fromARGB(255, 45, 106, 79),
          title: Text(
            'Add Income',
            style: TextStyle(
                fontFamily: 'Montserrat', fontWeight: FontWeight.bold),
          )),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(),
            ),
          ),
          IncomeForm(),
        ],
      ),
    );
  }
}

class IncomeForm extends StatefulWidget {
  const IncomeForm({super.key});

  @override
  State<IncomeForm> createState() => _IncomeFormState();
}

class _IncomeFormState extends State<IncomeForm> {
  // Global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  List<String> items = <String>[
    'Salary',
    'Dividents',
    'Refunds',
    'Awards',
    'Other'
  ];
  List<String> types = <String>['Cash', 'Card'];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    void _navigateToExpensesScreen(BuildContext context) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ExpensesScreen()));
    }

    String dropDownValue = items[1];

    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.only(
            right: screenWidth / 20,
            top: screenWidth / 7,
            left: screenWidth / 20,
            bottom: screenWidth / 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Type:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 45, 106, 79))),
            DropdownButtonFormField(
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
              },
              items: types.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              validator: (value) {
                if (value == null) {
                  return "Enter Type";
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 45, 106, 79)),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 45, 106, 79),
                          width: 2.5))),
            ),
            SizedBox(height: screenHeight / 20),
            Text('Category:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 45, 106, 79))),
            DropdownButtonFormField(
              onChanged: (String? newValue) {
                setState(() {
                  dropDownValue = newValue!;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null) {
                  return "Enter Category";
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 45, 106, 79)),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 45, 106, 79),
                          width: 2.5))),
            ),
            SizedBox(height: screenHeight / 20),
            Text('Amount:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 45, 106, 79))),
            TextFormField(
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Amount";
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 45, 106, 79)),
              cursorColor: Color.fromARGB(255, 45, 106, 79),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 45, 106, 79),
                          width: 2.5))),
            ),
            SizedBox(height: screenHeight / 20),
            Text('Description:',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 45, 106, 79))),
            TextFormField(
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Description";
                }
                return null;
              },
              style: TextStyle(color: Color.fromARGB(255, 45, 106, 79)),
              cursorColor: Color.fromARGB(255, 45, 106, 79),
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 45, 106, 79),
                          width: 2.5))),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: screenWidth / 10, top: screenWidth / 10),
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.05,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 45, 106, 79)),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Income added')),
                          );
                        }
                      },
                      child: const Text('Save'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenWidth / 10),
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.05,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {
                        _navigateToExpensesScreen(context);
                      },
                      child: const Text('Cancel',
                          style: TextStyle(
                              color: Color.fromARGB(255, 64, 145, 108))),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
