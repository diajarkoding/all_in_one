import 'dart:convert';

import 'package:all_in_one/serializable/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<UserIndex> fetchUser() async {
    final Uri url = Uri.parse('https://reqres.in/api/users/');
    var response = await http.get(url);
    var data = UserIndex.fromJson(jsonDecode(response.body));
    if (response.statusCode == 200) {
      return data;
    } else {
      throw 'tidak ada data';
    }
  }
}
