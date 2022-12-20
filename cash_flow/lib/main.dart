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
    ValueNotifier<GraphQLClient> client = GraphQLConfig.graphInit();
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Pocketful WORKING!',
        home: MainScreen(),
      ),
    );
  }
}
