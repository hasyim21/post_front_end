part of 'voucher_bloc.dart';

@freezed
class VoucherEvent with _$VoucherEvent {
  const factory VoucherEvent.started() = _Started;
  const factory VoucherEvent.addVoucher(VoucherModel voucher) = _AddVoucher;
  const factory VoucherEvent.getVouchers() = _GetVouchers;
  const factory VoucherEvent.useVoucher(
      VoucherModel voucher, int originalPrice) = _UseVoucher;
  const factory VoucherEvent.deleteVoucher(int id) = _DeleteVoucher;
  const factory VoucherEvent.deleteExpiredVouchers() = _DeleteExpiredVouchers;
}
