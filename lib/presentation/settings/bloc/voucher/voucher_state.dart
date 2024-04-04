part of 'voucher_bloc.dart';

@freezed
class VoucherState with _$VoucherState {
  const factory VoucherState.initial() = _Initial;
  const factory VoucherState.loading() = _Loading;
  const factory VoucherState.success(List<VoucherModel> vouchers) = _Success;
  const factory VoucherState.voucherResult(
      String message, int discount, int finalPrice) = _VoucherResult;
  const factory VoucherState.error(String message) = _Error;
}
