

import 'package:project/Models/product_model.dart';
import 'package:project/helper/Api.dart';

class UpdateProductServices {
  Future<ProductModel> UpdateProduct(
      {required String title,
      required String price,
      required String description,
      required String image,

    }) async {
    Map<String, dynamic> data =
        await Api().put(url:'https://fakestoreapi.com/products/:id', body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
    
    });
    return ProductModel.fromJson(data);
  }
}
