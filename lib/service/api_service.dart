import 'package:http/http.dart' as http;

import '../model/product_model.dart';
import '../model/user_model.dart';

class ApiService {
  //User List
  Future<List<UserModel>> getUserList() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      var jsondata = response.body;
      return userModelFromJson(jsondata);
    } else {
      throw Exception("Something Went Wrong");
    }
  }

  //ProductsModel
  Future<ProductsModel> getProductsModel() async {
    var response = await http.post(Uri.parse("https://grocery.ebasket.com.bd/api/offer-products"));

    if (response.statusCode == 200) {
      var jsondata = response.body;
      return productsModelFromJson(jsondata);
    } else {
      throw Exception("Something Went Wrong");
    }
  }
}