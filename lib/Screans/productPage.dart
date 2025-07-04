import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/show_messege.dart';
import 'package:project/cubit/product_cubit.dart';
import 'package:project/cubit/product_state.dart';
import 'package:project/widgets/custom_card.dart';

class productPage extends StatelessWidget {
  const productPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        if (state is productStateFailure) {
          showMessegeForUser(context, state);
        }
      },
      builder: (context, state) {
        if (state is productStateSuccess) {
          return GridView.builder(
              clipBehavior: Clip.none,
              itemCount: state.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.4),
              itemBuilder: (context, index) {
                return CustomCard(
                  product: state.products[index],
                );
              });
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
