import 'package:app_practice/data/dataModel.dart';
import 'package:http/http.dart' as http;

class UserApi {
  static const String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        return <User>[];
      }
    } catch (e) {
      return <User>[];
    }
  }
}
