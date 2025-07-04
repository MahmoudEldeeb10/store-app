import 'package:project/Models/product_model.dart';
import 'package:project/helper/Api.dart';

class AllProductService {
  Future<List<ProductModel>> getProduct() async {
    List<dynamic> data =
        await Api().get(url:'https://fakestoreapi.com/products');
    List<ProductModel> Products = [];
    for (int i = 0; i < data.length; i++) {
      Products.add(ProductModel.fromJson(data[i]));
    }
    return Products;
  }
}
