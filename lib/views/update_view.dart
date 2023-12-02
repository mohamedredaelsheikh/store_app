import 'package:flutter/material.dart';

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
    );
  }
}
