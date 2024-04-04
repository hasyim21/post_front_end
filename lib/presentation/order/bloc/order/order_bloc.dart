import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/services/shared_prefs_service.dart';
import '../../../home/models/order_item.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const _Success([], 0, 0, '', 0, 0, 0, '')) {
    on<_AddPaymentMethod>((event, emit) async {
      emit(const _Loading());
      final userData = await SharedPrefsService.getAuthData();
      List<OrderItem> products = event.orders;
      int totalQuantity = event.orders.fold(
        0,
        (previousValue, element) => previousValue + element.quantity,
      );
      int totalPrice = event.orders.fold(
        0,
        (previousValue, element) =>
            previousValue + (element.quantity * element.product.price),
      );
      String paymentMethod = event.paymentMethod;
      emit(_Success(
        products,
        totalQuantity,
        totalPrice,
        paymentMethod,
        0,
        0,
        userData.user.id,
        userData.user.name,
      ));
    });

    on<_AddPaymentAmount>((event, emit) {
      var currentState = state as _Success;
      int changeAmount = (event.paymentAmount > currentState.totalPrice)
          ? event.paymentAmount - currentState.totalPrice
          : 0;
      emit(const _Loading());
      emit(_Success(
        currentState.products,
        currentState.totalQuantity,
        currentState.totalPrice,
        currentState.paymentMethod,
        event.paymentAmount,
        changeAmount,
        currentState.cashierId,
        currentState.cashierName,
      ));
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Success([], 0, 0, '', 0, 0, 0, ''));
    });
  }
}
