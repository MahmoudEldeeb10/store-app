import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Models/product_model.dart';
import 'package:project/Screans/Update_product.dart';
import 'package:project/cubit/cart_cubit.dart';

class CustomCard extends StatelessWidget {
  final ProductModel product;

  CustomCard({required this.product});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, UpdateProduct.id, arguments: product),
      child: Stack(clipBehavior: Clip.none, children: [
        Container(
          width: 220,
          height: 150,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 40,
                spreadRadius: 0,
                offset: const Offset(0, 10))
          ]),
          child: Card(
            elevation: 2,
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.white, // لون الحدود
                    width: 1.0)), // عرض الحدود

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 8),
                      style: const TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$ ' '${product.price} ',
                            style: const TextStyle(
                                color: Colors.black, fontSize: 15)),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
        Positioned(
            left: 72,
            bottom: 50,
            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            )),
        Positioned(
            left: 12,
            bottom: 80,
            child: IconButton(
                onPressed: () {
                  BlocProvider.of<CartCubit>(context)
                      .sendDataToCart(product: product);
                },
                icon: const Icon(Icons.add)))
      ]),
    );
  }
}
