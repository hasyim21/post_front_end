import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import '../models/voucher_model.dart';

class CouponWidget extends StatelessWidget {
  final int? originalPrice;
  final VoucherModel voucher;
  final VoidCallback? onTap;

  const CouponWidget(
      {super.key, required this.voucher, this.originalPrice, this.onTap});

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color(0xffcbf3f0);
    const Color secondaryColor = Color(0xff368f8b);

    return GestureDetector(
      onTap: onTap,
      child: CouponCard(
        height: 150,
        backgroundColor: primaryColor,
        curveAxis: Axis.vertical,
        firstChild: Container(
          decoration: const BoxDecoration(
            color: secondaryColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${voucher.discountPercentage}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'OFF',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(color: Colors.white54, height: 0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      voucher.voucherName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        // fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        secondChild: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Kode Voucher',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                voucher.voucherCode,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(
                'Hingga ${voucher.expiredDate}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
