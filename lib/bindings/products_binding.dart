import 'package:get/get.dart';
import 'package:getx_app/providers/products_controller.dart';

class ProductsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsController());
  }
}
