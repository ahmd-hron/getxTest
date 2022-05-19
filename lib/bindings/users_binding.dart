import 'package:get/get.dart';
import 'package:getx_app/providers/users_controller.dart';

class UsersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersController());
  }
}
