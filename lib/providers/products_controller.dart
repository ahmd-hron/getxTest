import 'package:get/get.dart';
import '../models/products.dart';

class ProductsController extends GetxController {
  final List<Product> _products = [
    Product(id: '1', decription: 'graphic card', name: 'GTX 960', price: 600),
    Product(id: '2', decription: 't-shirt', name: 'red shirt', price: 250),
    Product(id: '3', decription: 'shorts', name: 'jeans shorts', price: 150)
  ];

  List<Product> get products {
    return _products;
  }

  void fetchProducts() {}

  void addProduct(Product product) {
    _products.add(product);
    update();
  }

  void delteProduct(String id) {
    int index = _products.indexWhere((element) => element.id == id);
    _products.remove(_products[index]);
    update();
  }
}
