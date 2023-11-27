import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    http.Response response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);

      List<ProductModel> productslist = [];
      for (int i = 0; i < data.length; i++) {
        productslist.add(ProductModel.fromJson(data[i]));
      }

      return productslist;
    } else {
      throw Exception(
          "There is a problem with status code${response.statusCode}");
    }
  }
}
