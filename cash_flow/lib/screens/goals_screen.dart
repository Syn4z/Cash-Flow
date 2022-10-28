import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Goals')),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
