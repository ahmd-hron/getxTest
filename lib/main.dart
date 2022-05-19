import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/bindings/products_binding.dart';
import 'package:getx_app/bindings/users_binding.dart';

import './screens/shop_screen.dart';
import './screens/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: ShopScreen.routeName,
      getPages: [
        GetPage(
            name: ShopScreen.routeName,
            page: () => ShopScreen(),
            binding: ProductsBindings()),
        GetPage(
            name: UsersScreen.routeName,
            page: () => UsersScreen(),
            binding: UsersBinding()),
      ],
    );
  }
}
