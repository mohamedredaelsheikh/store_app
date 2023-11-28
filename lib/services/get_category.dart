import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoryService {
  Future<List<ProductModel>> getcategory(String categoryname) async {
    List<dynamic> data = await Api()
        // ignore: missing_required_param
        .get(url: "https://fakestoreapi.com/products/category/$categoryname");

    List<ProductModel> categorieslist = [];
    for (int i = 0; i < data.length; i++) {
      categorieslist.add(ProductModel.fromJson(data[i]));
    }

    return categorieslist;
  }
}
