import 'package:flutter/material.dart';
import 'package:test1/shared/menu_drawer.dart';

class TrackInvScreen extends StatelessWidget {
  const TrackInvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tracking Investments')),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
