import 'package:test1/screens/GraphQLConfig.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ApiClients {
  static String signUp = '''mutation signUp(
                \$email: String!,
                \$username: String!,
                \$password: String!
              ){
                action: insert_signUp(objects: { email: \$email, username: \$username, password: \$password }) {
                returning {
                email
                }
              }
            ''';

  ///Example on how to implement mutation
  Future<String> Login(String email, username, password) async {
    try {
      ///initializing GraphQLConfig
      GraphQLConfig graphQLConfiguration = GraphQLConfig();
      GraphQLClient _client = graphQLConfiguration.clientToQuery();
      QueryResult result = await _client.mutate(
        MutationOptions(
          document: gql(signUp), // this
        ),
      );
      if (result.hasException) {
        print(result.exception?.graphqlErrors[0]?.message);
      } else if (result.data != null) {
        //  parse your response here and return
        // var data = User.fromJson(result.data["register"]);
      }

      return "";
    } catch (e) {
      print(e);
      return "";
    }
  }
}
