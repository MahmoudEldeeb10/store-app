class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final String image;
  final RateModel rate;
  ProductModel(
      { required this.id,
      required this.title,
      required this.description,
      required this.category,
      required this.image,
      required this.price,
      required this.rate});

  factory ProductModel.fromJson(dynamic JsonData) {
    return ProductModel(
        id: JsonData['id'],
        title: JsonData['title'],
        description: JsonData['description'],
        category: JsonData['category'],
        image: JsonData['image'],
        price: JsonData['price'],
        rate:RateModel.fromJson(JsonData['rating']) );
  }
}

class RateModel {
  final double rate;
  final int count;
  RateModel({required this.count, required this.rate});
  factory RateModel.fromJson(Jsondata) {
    return RateModel(count: Jsondata['count'], rate: Jsondata['rate']);
  }
}
