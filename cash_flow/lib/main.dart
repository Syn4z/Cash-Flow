import 'package:flutter/material.dart';
import 'package:test1/screens/GraphQLConfig.dart';
import 'package:test1/screens/addExpense.dart';
import 'package:test1/screens/main.dart';
import 'package:test1/screens/slash.dart';
import 'package:test1/screens/login.dart';
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:http/http.dart' as http;

void main() async {
  await initHiveForFlutter();
  runApp(Pocketful());
}

class Pocketful extends StatelessWidget {
  Pocketful();

  @override
  Widget build(BuildContext context) {
    final HttpLink link = HttpLink("http://20.123.41.200:5432/");

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
