import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/request/order_request_model.dart';
import 'shared_prefs_service.dart';

class OrderService {
  Future<bool> sendOrder(OrderRequestModel orderRequestModel) async {
    final url = Uri.parse('${Variables.baseUrl}/api/orders');
    final authData = await SharedPrefsService.getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final response = await http.post(
      url,
      headers: headers,
      body: orderRequestModel.toJson(),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
