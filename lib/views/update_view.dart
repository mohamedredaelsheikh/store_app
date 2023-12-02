import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_Buttom.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductView extends StatelessWidget {
  const UpdateProductView({super.key});
  static String id = 'Update Product View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Update Product',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          CustomTextField(
            hinttext: "title",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hinttext: "price",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hinttext: "description",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hinttext: "category",
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hinttext: "image",
          ),
          SizedBox(
            height: 50,
          ),
          CustomButtom(buttomname: "Update"),
        ]),
      ),
    );
  }
}
