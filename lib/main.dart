import 'package:flutter/material.dart';
import 'package:store_app/views/home_view.dart';
import 'package:store_app/views/update_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        UpdateProductView.id: (context) => const UpdateProductView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
