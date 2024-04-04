import 'dart:convert';

import '../../../data/models/request/order_request_model.dart';
import '../../../data/models/response/product_response_model.dart';

class OrderItem {
  final Product product;
  int quantity;

  OrderItem({
    required this.product,
    required this.quantity,
  });

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  Map<String, dynamic> toMapForLocal(int orderId) {
    return {
      'order_id': orderId,
      'product_id': product.productId,
      'quantity': quantity,
      'price': product.price,
    };
  }

  static OrderItemModel fromMapLocal(Map<String, dynamic> map) {
    return OrderItemModel(
      productId: map['product_id']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      totalPrice: map['price']?.toInt() ?? 0 * (map['quantity']?.toInt() ?? 0),
    );
  }

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      product: Product.fromMap(map['product']),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderItem.fromJson(String source) =>
      OrderItem.fromMap(json.decode(source));
}
