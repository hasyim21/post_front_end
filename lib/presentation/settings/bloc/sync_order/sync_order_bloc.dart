import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/respositories/order_repository.dart';
import '../../../../data/models/request/order_request_model.dart';

part 'sync_order_event.dart';
part 'sync_order_state.dart';
part 'sync_order_bloc.freezed.dart';

class SyncOrderBloc extends Bloc<SyncOrderEvent, SyncOrderState> {
  final OrderRepository _orderRepository;
  SyncOrderBloc(this._orderRepository) : super(const _Initial()) {
    on<_SendOrder>((event, emit) async {
      emit(const _Loading());
      //get orders from local is sync is 0
      final ordersIsSyncZero = await _orderRepository.getOrderByIsSync();

      for (final order in ordersIsSyncZero) {
        final orderItems =
            await _orderRepository.getOrderItemByOrderIdLocal(order.id!);

        final orderRequest = OrderRequestModel(
          transactionTime: order.transactionTime,
          totalItem: order.totalQuantity,
          subtotalProduk: order.subtotalProduk,
          discount: order.discount,
          totalPrice: order.totalPrice,
          paymentAmount: order.paymentAmount,
          changeAmount: order.changeAmount,
          kasirId: order.cashierId,
          paymentMethod: order.paymentMethod,
          orderItems: orderItems,
        );
        final response = await _orderRepository.sendRemoteOrder(orderRequest);
        if (response) {
          await _orderRepository.updateIsSyncOrderById(order.id!);
        }
      }
      emit(const _Success());
    });
  }
}
