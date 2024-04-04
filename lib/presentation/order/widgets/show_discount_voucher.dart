import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../settings/bloc/voucher/voucher_bloc.dart';
import '../../settings/widgets/coupon_widget.dart';

Future<void> showDiscountVoucher(BuildContext context, int originalPrice) {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: AppColors.white,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
      left: Radius.circular(24.0),
      right: Radius.circular(24.0),
    )),
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 16.0,
          right: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Voucher',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SpaceHeight(),
            BlocConsumer<VoucherBloc, VoucherState>(
              listener: (BuildContext context, VoucherState state) {
                state.maybeWhen(
                  orElse: () {},
                  voucherResult: (_, __, ___) => Navigator.pop(context),
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const Center(
                      child: Text('Tidak ada voucher'),
                    );
                  },
                  success: (vouchers) {
                    if (vouchers.isEmpty) {
                      return const Center(
                        child: Text('Tidak ada voucher'),
                      );
                    } else {
                      return Expanded(
                        child: ListView.separated(
                          itemCount: vouchers.length,
                          separatorBuilder: (context, index) =>
                              const SpaceHeight(),
                          itemBuilder: (context, index) => CouponWidget(
                            voucher: vouchers[index],
                            originalPrice: originalPrice,
                            onTap: () {
                              context.read<VoucherBloc>().add(
                                    VoucherEvent.useVoucher(
                                        vouchers[index], originalPrice),
                                  );
                            },
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
