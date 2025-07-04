import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Models/product_model.dart';
import 'package:project/Services/All_productServices.dart';

import 'package:project/cubit/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(productStateInitial());
  List<ProductModel>? products;

  Future<void> getProductData() async {
    emit(productStateLaoding());
    try {
      products = await AllProductService().getProduct();
      emit(productStateSuccess(products: products!));
    } catch (error) {
      emit(productStateFailure(error: error.toString()));
    }
  }

  filterData({required String input}) {
    List<ProductModel> filterData = [];
    filterData = products!
        .where(
            (item) => item.title.toLowerCase().startsWith(input.toLowerCase()))
        .toList();
    emit(productStateSuccess(products: filterData));
  }
}
