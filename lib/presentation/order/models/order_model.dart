import 'dart:convert';

import '../../home/models/order_item.dart';

class OrderModel {
  final int? id;
  final String paymentMethod;
  final int paymentAmount;
  final int changeAmount;
  final List<OrderItem> orders;
  final int totalQuantity;
  final int subtotalProduk;
  final int totalPrice;
  final int discount;
  final int cashierId;
  final String cashierName;
  final String transactionTime;
  final bool isSync;

  OrderModel({
    this.id,
    required this.paymentMethod,
    required this.paymentAmount,
    required this.changeAmount,
    required this.orders,
    required this.totalQuantity,
    required this.subtotalProduk,
    required this.totalPrice,
    required this.discount,
    required this.cashierId,
    required this.cashierName,
    required this.isSync,
    required this.transactionTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'payment_method': paymentMethod,
      'payment_amount': paymentAmount,
      'change_amount': changeAmount,
      'orders': orders.map((x) => x.toMap()).toList(),
      'total_quantity': totalQuantity,
      'total_price': totalPrice,
      'discount': discount,
      'cashier_id': cashierId,
      'cashier_name': cashierName,
      'isSync': isSync,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id']?.toInt() ?? 0,
      paymentMethod: map['payment_method'] ?? '',
      paymentAmount: map['payment_amount']?.toInt() ?? 0,
      changeAmount: map['change_amount']?.toInt() ?? 0,
      orders:
          List<OrderItem>.from(map['orders']?.map((x) => OrderItem.fromMap(x))),
      totalQuantity: map['total_quantity']?.toInt() ?? 0,
      subtotalProduk: map['subtotal_produk']?.toInt() ?? 0,
      totalPrice: map['total_price']?.toInt() ?? 0,
      discount: map['discount']?.toInt() ?? 0,
      cashierId: map['cashier_id']?.toInt() ?? 0,
      cashierName: map['cashier_name'] ?? '',
      transactionTime: map['transactionTime'] ?? '',
      isSync: map['isSync'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source));

  Map<String, dynamic> toMapForLocal() {
    return {
      'payment_method': paymentMethod,
      'payment_amount': paymentAmount,
      'change_amount': changeAmount,
      'orders':
          json.encode(orders.map((orderItem) => orderItem.toMap()).toList()),
      'total_item': totalQuantity,
      'subtotal_produk': subtotalProduk,
      'total_price': totalPrice,
      'discount': discount,
      'cashier_id': cashierId,
      'cashier_name': cashierName,
      'transaction_time': transactionTime,
      'is_sync': isSync ? 1 : 0,
    };
  }

  factory OrderModel.fromLocalMap(Map<String, dynamic> map) {
    return OrderModel(
      id: map['id']?.toInt() ?? 0,
      paymentMethod: map['payment_method'] ?? '',
      paymentAmount: map['payment_amount']?.toInt() ?? 0,
      changeAmount: map['change_amount']?.toInt() ?? 0,
      orders: (json.decode(map['orders']) as List)
          .map((orderMap) => OrderItem.fromMap(orderMap))
          .toList(),
      totalQuantity: map['total_item']?.toInt() ?? 0,
      subtotalProduk: map['subtotal_produk']?.toInt() ?? 0,
      totalPrice: map['total_price']?.toInt() ?? 0,
      discount: map['discount']?.toInt() ?? 0,
      cashierId: map['cashier_id']?.toInt() ?? 0,
      cashierName: map['cashier_name'] ?? '',
      transactionTime: map['transaction_time'] ?? '',
      isSync: map['is_sync'] == 1 ? true : false,
    );
  }

  @override
  String toString() {
    return 'OrderModel(id: $id, paymentMethod: $paymentMethod, paymentAmount: $paymentAmount, changeAmount: $changeAmount, orders: $orders, totalQuantity: $totalQuantity, subtotalProduk: $subtotalProduk, totalPrice: $totalPrice, discount: $discount, cashierId: $cashierId, cashierName: $cashierName, transactionTime: $transactionTime, isSync: $isSync)';
  }
}
