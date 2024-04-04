import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
// import '../../home/bloc/checkout/checkout_bloc.dart';

class ProcessButton extends StatelessWidget {
  final int totalPrice;
  final VoidCallback onPressed;

  const ProcessButton({
    super.key,
    required this.onPressed,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Row(
          children: [
            Text(
              totalPrice.currencyFormatRp,
              style: const TextStyle(
                color: AppColors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // BlocBuilder<CheckoutBloc, CheckoutState>(
            //   builder: (context, state) {
            //     return state.maybeWhen(
            //       orElse: () {
            //         return const Text(
            //           'Rp.0',
            //           style: TextStyle(
            //             color: AppColors.white,
            //             fontSize: 16.0,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         );
            //       },
            //       success: (products, totalQuantity, totalPrice) {
            //         return Text(
            //           totalPrice.currencyFormatRp,
            //           style: const TextStyle(
            //             color: AppColors.white,
            //             fontSize: 16.0,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),
            const Spacer(),
            const Text(
              'Proses',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SpaceWidth(5.0),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
              color: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
