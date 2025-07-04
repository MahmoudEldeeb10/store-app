


import 'package:project/helper/Api.dart';

class CategoryService {
  Future<List<dynamic>> getCategory() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');
    
      return data;
    
  }
}
