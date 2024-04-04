import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/respositories/order_repository.dart';
import '../../../order/models/order_model.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final OrderRepository _orderRepository;
  HistoryBloc(this._orderRepository) : super(const _Initial()) {
    on<_GetLocalHistoryOrder>((event, emit) async {
      emit(const _Loading());
      try {
        final data = await _orderRepository.getLocalHistoryOrder();
        emit(_Success(data));
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });
  }
}
