// ignore_for_file: avoid_function_literals_in_foreach_calls, prefer_const_constructors

import 'package:flutter/material.dart';
import '../screens/main_screen.dart';
import '../screens/debts_screen.dart';
import '../screens/expenses_screen.dart';
import '../screens/goals_screen.dart';
import '../screens/income_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'Income',
      'Expenses',
      'Goals',
      'Debts',
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(color: Color.fromARGB(255, 59, 125, 62)),
        child: Text('Pocketful',
            style: TextStyle(color: Colors.white, fontSize: 28))));
    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'Home':
                screen = MainScreen();
                break;
              case 'Income':
                screen = IncomeScreen();
                break;
              case 'Expenses':
                screen = ExpensesScreen();
                break;
              case 'Debts':
                screen = DebtsScreen();
                break;
              case 'Goals':
                screen = GoalsScreen();
                break;
            }
            Navigator.of(context).pop();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => screen));
          }));
    });
    return menuItems;
  }
}
