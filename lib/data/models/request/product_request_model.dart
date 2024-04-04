import 'package:image_picker/image_picker.dart';

class ProductRequestModel {
  final int? id;
  final String name;
  final int price;
  final int stock;
  final String category;
  final XFile image;
  final int isFavorite;

  ProductRequestModel({
    this.id,
    required this.name,
    required this.price,
    required this.stock,
    required this.category,
    required this.image,
    required this.isFavorite,
  });

  Map<String, String> toMap() {
    return {
      'name': name,
      'price': price.toString(),
      'stock': stock.toString(),
      'category': category,
      'is_favorite': isFavorite.toString(),
    };
  }
}
