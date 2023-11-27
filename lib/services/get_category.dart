import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class GetCategoryService {
  Future<List<ProductModel>> getcategory(String categoryname) async {
    http.Response response = await http.get(
        Uri.parse("https://fakestoreapi.com/products/category/$categoryname"));

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> categorieslist = [];
    for (int i = 0; i < data.length; i++) {
      categorieslist.add(ProductModel.fromJson(data[i]));
    }

    return categorieslist;
  }
}
