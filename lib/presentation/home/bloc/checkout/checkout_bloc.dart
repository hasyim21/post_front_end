import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/response/product_response_model.dart';
import '../../models/order_item.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Success([], 0, 0)) {
    on<_AddCheckout>((event, emit) {
      var currentState = state as _Success;
      List<OrderItem> newCheckout = [...currentState.products];
      emit(const _Loading());

      var index = newCheckout.indexWhere(
        (element) => element.product == event.product,
      );

      if (index != -1) {
        newCheckout[index].quantity++;
      } else {
        newCheckout.add(OrderItem(product: event.product, quantity: 1));
      }

      int totalQuantity =
          newCheckout.fold(0, (sum, element) => sum + element.quantity);
      int totalPrice = newCheckout.fold(
          0, (sum, element) => sum + element.product.price * element.quantity);
      emit(_Success(newCheckout, totalQuantity, totalPrice));
    });

    on<_RemoveCheckout>((event, emit) {
      var currentState = state as _Success;
      List<OrderItem> newCheckout = [...currentState.products];
      emit(const _Loading());

      final index = newCheckout.indexWhere(
        (element) => element.product == event.product,
      );

      if (index != -1) {
        if (newCheckout[index].quantity > 1) {
          newCheckout[index].quantity--;
        } else {
          newCheckout.removeAt(index);
        }
      }

      int totalQuantity =
          newCheckout.fold(0, (sum, element) => sum + element.quantity);
      int totalPrice = newCheckout.fold(
          0, (sum, element) => sum + element.product.price * element.quantity);
      emit(_Success(newCheckout, totalQuantity, totalPrice));
    });

    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Success([], 0, 0));
    });
  }
}
