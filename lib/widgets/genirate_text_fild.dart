import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/core/input_border.dart';
import 'package:project/cubit/product_cubit.dart';

class GenirateTextFild extends StatelessWidget {
  const GenirateTextFild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: TextField(
        onChanged: (input) {
          BlocProvider.of<ProductCubit>(context).filterData(input: input);
        },
        decoration: InputDecoration(
            suffixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            hintText: 'enter name of product',
            border: inputBorder(),
            enabledBorder: inputBorder(),
            focusedBorder: inputBorder()),
      ),
    );
  }
}
