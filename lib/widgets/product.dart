import 'package:flutter/material.dart';
import '../models/products.dart' as model;

class Product extends StatelessWidget {
  const Product({Key? key, required this.product}) : super(key: key);
  final model.Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(product.name),
      subtitle: Text(product.decription),
      //TODO on pressed here supposed to edite the product by pushing a new screen
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            Text('${product.price}'),
            const IconButton(onPressed: null, icon: Icon(Icons.edit_note))
          ],
        ),
      ),
    );
  }
}
