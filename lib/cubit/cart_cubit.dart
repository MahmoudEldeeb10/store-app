import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/Models/product_model.dart';
import 'package:project/cubit/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartStateInitial());
  List<ProductModel> CartProduct = [];

  void sendDataToCart({required ProductModel product}) {
    CartProduct.add(product);
    emit(AddDataToCartState(products: CartProduct));
  }

  void getCartData() {
    emit(CartStateLoading());
    if (CartProduct.isNotEmpty) {
      emit(AddDataToCartState(products: CartProduct));
    } else {
      emit(FildToAddDataToCartState(error: 'لايوجد منتجات في السله'));
    }
  }
}
