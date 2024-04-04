import 'dart:convert';

class OrderRequestModel {
  final String transactionTime;
  final int kasirId;
  final int totalItem;
  final int subtotalProduk;
  final int discount;
  final int totalPrice;
  final int paymentAmount;
  final int changeAmount;
  final String paymentMethod;
  final List<OrderItemModel> orderItems;

  OrderRequestModel({
    required this.transactionTime,
    required this.kasirId,
    required this.totalItem,
    required this.subtotalProduk,
    required this.discount,
    required this.totalPrice,
    required this.paymentAmount,
    required this.changeAmount,
    required this.paymentMethod,
    required this.orderItems,
  });

  factory OrderRequestModel.fromJson(String str) =>
      OrderRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderRequestModel.fromMap(Map<String, dynamic> json) =>
      OrderRequestModel(
        transactionTime: json["transaction_time"],
        kasirId: json["kasir_id"],
        totalItem: json["total_item"],
        subtotalProduk: json["subtotal_produk"],
        discount: json["discount"],
        totalPrice: json["total_price"],
        paymentAmount: json["payment_amount"],
        changeAmount: json["change_amount"],
        paymentMethod: json["payment_method"],
        orderItems: List<OrderItemModel>.from(
            json["order_items"].map((x) => OrderItemModel.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "transaction_time": transactionTime,
        "kasir_id": kasirId,
        "total_item": totalItem,
        "subtotal_produk": subtotalProduk,
        "discount": discount,
        "total_price": totalPrice,
        "payment_amount": paymentAmount,
        "change_amount": changeAmount,
        "payment_method": paymentMethod,
        "order_items": List<dynamic>.from(orderItems.map((x) => x.toMap())),
      };
}

class OrderItemModel {
  final int productId;
  final int quantity;
  final int totalPrice;

  OrderItemModel({
    required this.productId,
    required this.quantity,
    required this.totalPrice,
  });

  factory OrderItemModel.fromJson(String str) =>
      OrderItemModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderItemModel.fromMap(Map<String, dynamic> json) => OrderItemModel(
        productId: json["product_id"],
        quantity: json["quantity"],
        totalPrice: json["total_price"],
      );

  Map<String, dynamic> toMap() => {
        "product_id": productId,
        "quantity": quantity,
        "total_price": totalPrice,
      };
}
