import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../../data/respositories/voucher_repository.dart';
import '../../models/voucher_model.dart';

part 'voucher_event.dart';
part 'voucher_state.dart';
part 'voucher_bloc.freezed.dart';

class VoucherBloc extends Bloc<VoucherEvent, VoucherState> {
  final VoucherRepository _voucherRepository;
  VoucherBloc(this._voucherRepository) : super(const _Initial()) {
    on<_AddVoucher>((event, emit) async {
      emit(const _Loading());
      await _voucherRepository.insertVoucher(event.voucher);
      final vouchers = await _voucherRepository.getVouchers();
      emit(_Success(vouchers));
    });

    on<_GetVouchers>((event, emit) async {
      emit(const _Loading());
      final vouchers = await _voucherRepository.getVouchers();
      emit(_Success(vouchers));
    });

    on<_UseVoucher>((event, emit) async {
      emit(const _Loading());
      final vouchers = await _voucherRepository.getVouchers();
      bool status = vouchers.any((element) =>
          element.voucherCode == event.voucher.voucherCode &&
          element.expiredDate == event.voucher.expiredDate);

      String message = '';
      int totalDiscount = 0;
      int finalPrice = 0;

      // Fungsi untuk menghitung diskon
      int calculateDiscount() {
        var discount =
            (event.originalPrice * (event.voucher.discountPercentage / 100))
                .toInt();
        return discount;
      }

      // Fungsi untuk menghitung harga setelah diskon
      int calculatePriceAfterDiscount() {
        int priceAfterDiscount = event.originalPrice - totalDiscount;
        return priceAfterDiscount;
      }

      if (status) {
        totalDiscount = calculateDiscount();
        finalPrice = calculatePriceAfterDiscount();
        message = 'success';
      } else {
        message = 'failed';
      }

      emit(_VoucherResult(message, totalDiscount, finalPrice));
    });

    on<_DeleteExpiredVouchers>((event, emit) async {
      emit(const _Initial());
      final expiredDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
      await _voucherRepository.deleteExpiredVouchers(expiredDate);
      final vouchers = await _voucherRepository.getVouchers();
      emit(_Success(vouchers));
    });

    on<_DeleteVoucher>((event, emit) async {
      emit(const _Initial());
      await _voucherRepository.deleteVoucher(event.id);
      final vouchers = await _voucherRepository.getVouchers();
      emit(_Success(vouchers));
    });

    on<_Started>((event, emit) async {
      emit(const _Initial());
    });
  }
}
