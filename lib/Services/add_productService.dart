
import 'package:project/Models/product_model.dart';
import 'package:project/helper/Api.dart';

class addProductServices {
  Future<ProductModel> addproduct(
      {required String title,
      required String price,
      required String description,
      required String image,
      required String category}) async {
    Map<String, dynamic> data = await Api().post(
       url:  'https://fakestoreapi.com/products',
      body: {
          "title": title,
          "price": price,
          "description": description,
          "image": image,
           "category": category
        },);
    return ProductModel.fromJson(data);
  }
}
