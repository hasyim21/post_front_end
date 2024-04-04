import 'dart:convert';

import 'product_response_model.dart';

class EditProductResponseModel {
  final bool success;
  final String message;
  final Product data;

  EditProductResponseModel({
    required this.success,
    required this.message,
    required this.data,
  });

  factory EditProductResponseModel.fromJson(String str) =>
      EditProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EditProductResponseModel.fromMap(Map<String, dynamic> json) =>
      EditProductResponseModel(
        success: json["success"],
        message: json["message"],
        data: Product.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": data.toMap(),
      };

  @override
  String toString() =>
      'EditProductResponseModel(success: $success, message: $message, data: $data)';
}
