// ignore_for_file: avoid_function_literals_in_foreach_calls, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test1/screens/about.dart';
import 'package:test1/screens/settings.dart';
import 'package:test1/screens/user.dart';
import '../screens/main.dart';
import '../screens/debts.dart';
import '../screens/expenses.dart';
import '../screens/goals.dart';
import '../screens/income.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Color.fromARGB(255, 45,106,79),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UserScreen()));
          },
          child: Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              bottom: 24,
            ),
            child: Column(children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: Colors.grey,
              ),
              SizedBox(height: 12),
              Text(
                'Username',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Text(
                'username@mail.com',
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ]),
          ),
        ),
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.home,color: Colors.lightBlueAccent,),
              title: Text('Home',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MainScreen())),
            ),
            ListTile(
              leading: Icon(Icons.attach_money,color: Colors.green,),
              title: Text('Income',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => IncomeScreen())),
            ),
            ListTile(
              leading: Icon(Icons.analytics_outlined,color: Colors.purpleAccent,),
              title: Text('Expenses',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => ExpensesScreen())),
            ),
            ListTile(
              leading: Icon(Icons.auto_graph,color: Colors.amber,),
              title: Text('Goals',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => GoalsScreen())),
            ),
            ListTile(
              leading: Icon(Icons.auto_stories_outlined,color: Color.fromARGB(255, 183, 73, 65),),
              title: Text('Debts',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => DebtsScreen())),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              leading: Icon(Icons.app_settings_alt_outlined,color: Colors.black,),
              title: Text('Settings',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SettingsScreen())),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About',
              style: TextStyle(fontFamily: 'Montserrat'),),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => AboutScreen())),
            ),
          ],
        ),
      );
}
