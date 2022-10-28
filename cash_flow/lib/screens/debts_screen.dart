import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class DebtsScreen extends StatelessWidget {
  const DebtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Debts')),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
