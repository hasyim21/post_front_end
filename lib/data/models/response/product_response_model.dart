import 'dart:convert';

class ProductResponseModel {
  final bool success;
  final String message;
  final List<Product> data;

  ProductResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ProductResponseModel.fromJson(String str) =>
      ProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductResponseModel(
        success: json["success"],
        message: json["message"],
        data: List<Product>.from(json["data"].map((x) => Product.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };

  @override
  String toString() =>
      'ProductResponseModel(success: $success, message: $message, data: $data)';
}

class Product {
  final int? id;
  final int? productId;
  final String name;
  final int price;
  final int stock;
  final String category;
  final String image;
  final bool isFavorite;

  Product({
    this.id,
    this.productId,
    required this.name,
    required this.price,
    required this.stock,
    required this.category,
    required this.image,
    this.isFavorite = false,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        productId: json["product_id"],
        name: json["name"],
        price: json["price"],
        stock: json["stock"],
        category: json["category"],
        image: json["image"] ?? '',
        isFavorite: json["is_favorite"] == 1 ? true : false,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "stock": stock,
        "category": category,
        "image": image,
        "is_favorite": isFavorite ? 1 : 0,
      };

  Map<String, dynamic> toLocalMap() => {
        "product_id": id,
        "name": name,
        "price": price,
        "stock": stock,
        "category": category,
        "image": image,
        "is_favorite": isFavorite ? 1 : 0,
      };

  Product copyWith({
    int? id,
    int? productId,
    String? name,
    int? price,
    int? stock,
    String? category,
    String? image,
    bool? isFavorite,
  }) {
    return Product(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
      stock: stock ?? this.stock,
      category: category ?? this.category,
      image: image ?? this.image,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, productId: $productId, name: $name, price: $price, stock: $stock, category: $category, image: $image, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.productId == productId &&
        other.name == name &&
        other.price == price &&
        other.stock == stock &&
        other.category == category &&
        other.image == image &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        productId.hashCode ^
        name.hashCode ^
        price.hashCode ^
        stock.hashCode ^
        category.hashCode ^
        image.hashCode ^
        isFavorite.hashCode;
  }
}
