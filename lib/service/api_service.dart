import 'package:http/http.dart' as http;

import '../model/user_model.dart';

class ApiService {
  //User List
  Future<List<UserModel>> getUserList() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      var jsondata = response.body;
      // print(jsondata);
      // getProfile();
      return userModelFromJson(jsondata);
    } else {
      throw Exception("Something Went Wrong");
    }
  }
}