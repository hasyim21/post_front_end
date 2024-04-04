import '../../core/utils/custom_error.dart';
import '../models/response/qris_cancel_response_model.dart';
import '../models/response/qris_response_model.dart';
import '../models/response/qris_status_response_model.dart';
import '../services/midtrans_service.dart';

class PaymentRepository {
  final MidtransService midtransService;

  PaymentRepository({required this.midtransService});

  Future<QrisResponseModel> generateQris(
      String orderId, int grossAmount) async {
    try {
      final result = await midtransService.generateQris(orderId, grossAmount);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<QrisStatusResponseModel> checkQrisStatus(String orderId) async {
    try {
      final result = await midtransService.checkQrisStatus(orderId);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<QrisCancelResponseModel> cancelQris(String orderId) async {
    try {
      final result = await midtransService.cancelQris(orderId);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
