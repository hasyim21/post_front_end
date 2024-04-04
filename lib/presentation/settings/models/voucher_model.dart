import 'dart:convert';

class VoucherModel {
  final int? id;
  final String voucherName;
  final String voucherCode;
  final int discountPercentage;
  final String expiredDate;

  VoucherModel({
    this.id,
    required this.voucherName,
    required this.voucherCode,
    required this.discountPercentage,
    required this.expiredDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'voucher_name': voucherName,
      'voucher_code': voucherCode,
      'discount_percentage': discountPercentage,
      'expired_date': expiredDate,
    };
  }

  factory VoucherModel.fromMap(Map<String, dynamic> map) {
    return VoucherModel(
      id: map['id']?.toInt() ?? 0,
      voucherName: map['voucher_name'] ?? '',
      voucherCode: map['voucher_code'] ?? '',
      discountPercentage: map['discount_percentage']?.toInt() ?? 0,
      expiredDate: map['expired_date'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory VoucherModel.fromJson(String source) =>
      VoucherModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VoucherModel &&
        other.id == id &&
        other.voucherName == voucherName &&
        other.voucherCode == voucherCode &&
        other.discountPercentage == discountPercentage &&
        other.expiredDate == expiredDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        voucherName.hashCode ^
        voucherCode.hashCode ^
        discountPercentage.hashCode ^
        expiredDate.hashCode;
  }
}
