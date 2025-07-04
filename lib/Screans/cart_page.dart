import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Screans/custom_card_page.dart';
import 'package:project/cubit/cart_cubit.dart';
import 'package:project/cubit/cart_state.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const String id = 'CartPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cart product',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state is AddDataToCartState) {
            return CustomCartPage(
              products: state.products,
            );
          } else if (state is FildToAddDataToCartState) {
            return Text(state.error);
          }
          return const Center(
            child: LinearProgressIndicator(
              minHeight: 3,
            ),
          );
        },
      ),
    );
  }
}
