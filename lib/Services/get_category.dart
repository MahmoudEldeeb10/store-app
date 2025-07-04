import 'package:project/Models/product_model.dart';
import 'package:project/helper/Api.dart';

class GetCategoryService {
  Future<List<ProductModel>> getCategory({required String category}) async {
    List<dynamic> DataRecived = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/${category}');
    List<ProductModel> categoryList = [];
    for (var item in DataRecived) {
      categoryList.add(ProductModel.fromJson(item));
    }
    return categoryList;
  }
}
