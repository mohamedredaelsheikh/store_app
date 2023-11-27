import 'dart:convert';

import 'package:http/http.dart' as http;

class AllCategoriesService {
  Future<List<dynamic>> getAllProduct() async {
    http.Response response = await http
        .get(Uri.parse("https://fakestoreapi.com/products/categories"));

    List<dynamic> data = jsonDecode(response.body);

    return data;
  }
}
