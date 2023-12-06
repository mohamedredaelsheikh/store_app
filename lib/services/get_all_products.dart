import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        // ignore: missing_required_param
        await Api().get(url: "https://fakestoreapi.com/products");

    List<ProductModel> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(ProductModel.fromJson(data[i]));
    }
    print(productslist[0].id.toString());
    return productslist;
  }
}
