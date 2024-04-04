import '../../core/utils/custom_error.dart';
import '../../presentation/settings/models/voucher_model.dart';
import '../services/sqlite_service.dart';

class VoucherRepository {
  Future<List<VoucherModel>> getVouchers() async {
    try {
      final result = await SQLiteService.instance.getVouchers();
      return result;
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<void> insertVoucher(VoucherModel voucher) async {
    try {
      await SQLiteService.instance.insertVoucher(voucher);
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<void> deleteVoucher(int id) async {
    try {
      await SQLiteService.instance.deleteVoucher(id);
    } catch (e) {
      throw CustomError(e.toString());
    }
  }

  Future<void> deleteExpiredVouchers(String expiredDate) async {
    try {
      await SQLiteService.instance.deleteExpiredVouchers(expiredDate);
    } catch (e) {
      throw CustomError(e.toString());
    }
  }
}
