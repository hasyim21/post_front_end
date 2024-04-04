part of 'qris_bloc.dart';

@freezed
class QrisEvent with _$QrisEvent {
  const factory QrisEvent.started() = _Started;
  const factory QrisEvent.generateQris(String orderId, int grossAmount) =
      _GenerateQris;
  const factory QrisEvent.checkQrisStatus(String orderId) = _CheckQrisStatus;
  const factory QrisEvent.cancelQris(String orderId) = _CancelQris;
}
