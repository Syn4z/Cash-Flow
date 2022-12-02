import 'package:flutter/material.dart';
import 'package:test1/screens/addExpense.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/slash.dart';
import 'package:test1/screens/login.dart';
import "package:graphql_flutter/graphql_flutter.dart";

void main() {
  runApp(Pocketful());
}

class Pocketful extends StatelessWidget {
  const Pocketful({super.key});

  @override
  Widget build(BuildContext context) {
    final HttpLink link = HttpLink("localhost:3000/graphql");

    ValueNotifier<GraphQLClient> client =
        ValueNotifier(GraphQLClient(cache: InMemoryCache(), link: link));

    return GraphQLProvider(
        client: client,
        child: MaterialApp(
          home: MainScreen(),
        ));
  }
  /*
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Slash(),
        '/add': (context) => AddExpenseScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Color.fromARGB(255, 64, 145, 108)),
          fontFamily: 'Montserrat'),
    );
  }
  */
}
