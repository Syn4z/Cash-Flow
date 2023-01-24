import 'package:flutter/material.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/slash.dart';

import '../widgets/backButton.dart';
import '../widgets/nextButton.dart';
import '../widgets/input.dart';

import 'package:graphql_flutter/graphql_flutter.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          backBtn(upperMargin: screenHeight * 0.05, widgetName: const Slash()),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.09),
            child: Image.asset('assets/images/logo.png'),
          ),
          InputBar(
            text: 'Your email', //TO DO need to implement my graphql here
            upperMargin: screenHeight * 0.02,
          ),
          InputBar(
            text: 'Your password',
            upperMargin: screenHeight * 0.02,
          ),
          nextBtn(
              text: 'Sign In',
              upperMargin: screenHeight * 0.04,
              widgetName: const MainScreen()),
        ])));
  }
}
/*
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = 
      HttpLink("http://localhost:3000/graphql");
  
    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient> {
      GraphQLClient (
        link: httpLink,
        cache: OptimisticCache (
          data
        )
      )
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
}
*/
