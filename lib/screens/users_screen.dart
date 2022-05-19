import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/providers/users_controller.dart';
import 'package:getx_app/screens/shop_screen.dart';
import 'package:getx_app/widgets/user.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';
  UsersScreen({Key? key}) : super(key: key);

  final userController = UsersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () => Get.toNamed(ShopScreen.routeName),
            icon: const Icon(Icons.person))
      ]),
      body: ListView.builder(
        itemCount: userController.users.length,
        itemBuilder: (context, i) => User(user: userController.users[i]),
      ),
    );
  }
}
