import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Expenses')),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
