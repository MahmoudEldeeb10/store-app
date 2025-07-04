import 'package:project/Models/product_model.dart';

abstract class ProductState {}

class productStateInitial extends ProductState {}

class productStateSuccess extends ProductState {
  List<ProductModel> products;
  productStateSuccess({required this.products});
}

class productStateFailure extends ProductState {
  String error;
  productStateFailure({required this.error});
}

class productStateLaoding extends ProductState {}
