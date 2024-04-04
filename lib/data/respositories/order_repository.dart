import '../../core/utils/custom_error.dart';
import '../../presentation/order/models/order_model.dart';
import '../models/request/order_request_model.dart';
import '../services/order_service.dart';
import '../services/sqlite_service.dart';

class OrderRepository {
  final OrderService orderService;

  OrderRepository({required this.orderService});

  // remote data
  Future<bool> sendRemoteOrder(OrderRequestModel orderRequestModel) async {
    try {
      final result = await orderService.sendOrder(orderRequestModel);
      return result;
    } catch (_) {
      return false;
    }
  }

  // local data
  Future<List<OrderModel>> getLocalHistoryOrder() async {
    try {
      final result = await SQLiteService.instance.getHistoryOrder();
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<List<OrderModel>> getOrderByIsSync() async {
    try {
      final result = await SQLiteService.instance.getOrderByIsSync();
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<List<OrderItemModel>> getOrderItemByOrderIdLocal(int idOrder) async {
    try {
      final result =
          await SQLiteService.instance.getOrderItemByOrderIdLocal(idOrder);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<int> updateIsSyncOrderById(int id) async {
    try {
      final result = await SQLiteService.instance.updateIsSyncOrderById(id);
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
