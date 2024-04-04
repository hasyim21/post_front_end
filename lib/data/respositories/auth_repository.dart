import '../../core/utils/custom_error.dart';
import '../models/response/auth_response_model.dart';
import '../services/auth_service.dart';

class AuthRepository {
  final AuthService authService;

  AuthRepository({required this.authService});

  Future<AuthResponseModel> login(String email, String password) async {
    try {
      final result = await authService.login(email, password);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<String> logout() async {
    try {
      final result = await authService.logout();
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
