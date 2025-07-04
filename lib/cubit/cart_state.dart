import 'package:project/Models/product_model.dart';

class CartState {}

class CartStateInitial extends CartState {}

class CartStateLoading extends CartState {}

class AddDataToCartState extends CartState {
  List<ProductModel> products;
  AddDataToCartState({required this.products});
}

class FildToAddDataToCartState extends CartState {
  String error;
  FildToAddDataToCartState({required this.error});
}
