import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../../core/utils/custom_error.dart';
import '../models/response/auth_response_model.dart';
import 'shared_prefs_service.dart';

class AuthService {
  Future<AuthResponseModel> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/login'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        return AuthResponseModel.fromJson(response.body);
      } else {
        throw CustomError(json.decode(response.body)['message']);
      }
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<String> logout() async {
    try {
      final authData = await SharedPrefsService.getAuthData();
      final response = await http.post(
        Uri.parse('${Variables.baseUrl}/api/logout'),
        headers: {
          'Authorization': 'Bearer ${authData.token}',
        },
      );

      final body = json.decode(response.body)['message'];

      if (response.statusCode == 200) {
        return body;
      } else {
        return throw CustomError(body);
      }
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
