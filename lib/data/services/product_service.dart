import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../../core/utils/custom_error.dart';
import '../models/request/product_request_model.dart';
import '../models/response/add_product_response_model.dart';
import '../models/response/edit_product_response_model.dart';
import '../models/response/product_response_model.dart';
import 'shared_prefs_service.dart';

class ProductService {
  Future<ProductResponseModel> getProducts() async {
    try {
      final authData = await SharedPrefsService.getAuthData();
      final url = Uri.parse('${Variables.baseUrl}/api/products');
      final headers = {'Authorization': 'Bearer ${authData.token}'};

      final response = await http.get(url, headers: headers);

      if (response.statusCode == 200) {
        return ProductResponseModel.fromJson(response.body);
      } else {
        throw CustomError(json.decode(response.body)['message']);
      }
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<AddProductResponseModel> addProduct(
    ProductRequestModel product,
  ) async {
    try {
      final authData = await SharedPrefsService.getAuthData();
      final url = Uri.parse('${Variables.baseUrl}/api/products');
      final headers = {'Authorization': 'Bearer ${authData.token}'};

      final request = http.MultipartRequest('POST', url);

      request.fields.addAll(product.toMap());
      request.files.add(
        await http.MultipartFile.fromPath(
          'image',
          product.image.path,
        ),
      );
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      final body = await response.stream.bytesToString();

      if (response.statusCode == 201) {
        return AddProductResponseModel.fromJson(body);
      } else {
        throw CustomError(json.decode(body)['message']);
      }
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<Either<String, EditProductResponseModel>> editProduct(
    ProductRequestModel product,
  ) async {
    final authData = await SharedPrefsService.getAuthData();
    final headers = {'Authorization': 'Bearer ${authData.token}'};
    final request = http.MultipartRequest(
      'PUT',
      Uri.parse('${Variables.baseUrl}/api/products/${product.id}'),
    );
    request.fields.addAll(product.toMap());
    request.files.add(
      await http.MultipartFile.fromPath('image', product.image.path),
    );
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    final body = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      return right(EditProductResponseModel.fromJson(body));
    } else {
      return left(body);
    }
  }

  Future<String> deleteProduct(int id) async {
    try {
      final authData = await SharedPrefsService.getAuthData();
      final url = Uri.parse('${Variables.baseUrl}/api/products/$id');
      final headers = {'Authorization': 'Bearer ${authData.token}'};

      final response = await http.delete(url, headers: headers);
      final body = json.decode(response.body)['message'];

      if (response.statusCode == 200) {
        return body;
      } else {
        throw CustomError(body);
      }
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
