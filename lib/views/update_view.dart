import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_Button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({super.key});
  static String id = 'Update Product View';

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? productname, image, description, price;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;

    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              CustomTextField(
                hinttext: "product name",
                onChanged: (data) {
                  productname = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hinttext: "price",
                input: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hinttext: "description",
                onChanged: (data) {
                  description = data;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                hinttext: "image",
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                buttomname: "Update",
                onTap: () async {
                  isloading = true;
                  setState(() {});
                  try {
                    await updateProduct(product);
                    print("succes");
                  } catch (e) {
                    print(e.toString());
                  }
                  isloading = false;
                  setState(() {});
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        title: productname == null ? product.title : productname!,
        price: price == null ? product.price.toString() : price!,
        description: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category,
        id: product.id);
  }
}
