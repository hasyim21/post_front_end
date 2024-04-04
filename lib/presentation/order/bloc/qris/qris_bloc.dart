import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/respositories/payment_repository.dart';
import '../../../../data/models/response/qris_response_model.dart';
part 'qris_event.dart';
part 'qris_state.dart';
part 'qris_bloc.freezed.dart';

class QrisBloc extends Bloc<QrisEvent, QrisState> {
  final PaymentRepository _paymentRepository;
  QrisBloc(this._paymentRepository) : super(const _Initial()) {
    on<_GenerateQris>((event, emit) async {
      emit(const _Loading());
      final response = await _paymentRepository.generateQris(
          event.orderId, event.grossAmount);

      emit(_QrisResponse(response));
    });

    on<_CheckQrisStatus>((event, emit) async {
      final response = await _paymentRepository.checkQrisStatus(event.orderId);

      if (response.transactionStatus == 'settlement') {
        emit(const _Success('settlement'));
      }
    });

    on<_CancelQris>((event, emit) async {
      final response = await _paymentRepository.cancelQris(event.orderId);

      if (response.transactionStatus == 'cancel') {
        emit(const _Success('cancel'));
      }
    });
  }
}
