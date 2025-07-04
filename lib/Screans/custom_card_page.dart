import 'package:flutter/material.dart';
import 'package:project/Models/product_model.dart';
import 'package:project/Screans/cart_page_item.dart';

class CustomCartPage extends StatelessWidget {
  final List<ProductModel> products;
  const CustomCartPage({required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CartpageItem(product: products[index]),
            ));
  }
}
