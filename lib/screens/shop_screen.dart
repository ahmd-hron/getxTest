import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_app/screens/users_screen.dart';

import '../providers/products_controller.dart';
import '../widgets/product.dart';

class ShopScreen extends StatelessWidget {
  static const String routeName = '/shop';
  ShopScreen({Key? key}) : super(key: key);
  final productsController = ProductsController();

  //should recive the list of products
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this button should push the users list
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () => Get.toNamed(UsersScreen.routeName),
            icon: const Icon(Icons.shopping_cart))
      ]),
      body: ListView.builder(
        itemCount: productsController.products.length,
        itemBuilder: (context, i) =>
            Product(product: productsController.products[i]),
      ),
    );
  }
}
