import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/utils/custom_error.dart';
import '../models/response/qris_cancel_response_model.dart';
import '../models/response/qris_response_model.dart';
import '../models/response/qris_status_response_model.dart';
import 'shared_prefs_service.dart';

class MidtransService {
  String generateBasicAuthHeader(String serverKey) {
    final base64Credentials = base64Encode(
      utf8.encode('$serverKey:'),
    );
    final authHeader = 'Basic $base64Credentials';

    return authHeader;
  }

  Future<QrisResponseModel> generateQris(
      String orderId, int grossAmount) async {
    final serverKey = await SharedPrefsService.getMitransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': generateBasicAuthHeader(serverKey)
    };

    final body = json.encode(
      {
        "payment_type": "gopay",
        "transaction_details": {
          "order_id": orderId,
          "gross_amount": grossAmount,
        }
      },
    );

    final response = await http.post(
      Uri.parse('https://api.sandbox.midtrans.com/v2/charge'),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      return QrisResponseModel.fromJson(response.body);
    } else {
      throw CustomError('Failed to generate QR Code');
    }
  }

  Future<QrisStatusResponseModel> checkQrisStatus(String orderId) async {
    final serverKey = await SharedPrefsService.getMitransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': generateBasicAuthHeader(serverKey)
    };

    final response = await http.get(
      Uri.parse('https://api.sandbox.midtrans.com/v2/$orderId/status'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return QrisStatusResponseModel.fromJson(response.body);
    } else {
      throw CustomError('Failed to check payment status');
    }
  }

  Future<QrisCancelResponseModel> cancelQris(String orderId) async {
    final serverKey = await SharedPrefsService.getMitransServerKey();
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': generateBasicAuthHeader(serverKey)
    };

    final response = await http.post(
      Uri.parse('https://api.sandbox.midtrans.com/v2/$orderId/cancel'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return QrisCancelResponseModel.fromJson(response.body);
    } else {
      throw CustomError('Failed to cancel payment');
    }
  }
}
