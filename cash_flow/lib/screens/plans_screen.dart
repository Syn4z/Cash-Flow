import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Plans')),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
