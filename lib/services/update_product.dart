import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> addProduct(
      {required String title,
      required int id,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().put(
        url: "https://fakestoreapi.com/products/:$id",
        body: {
          "title": title,
          "price": price,
          "description": description,
          "image": image,
          "category": category,
        },
        token: null);

    return ProductModel.fromJson(data);
  }
}
