import 'package:flutter/material.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../order/models/order_model.dart';
import '../pages/detail_transaction_page.dart';

class HistoryTransactionCard extends StatelessWidget {
  final OrderModel history;

  const HistoryTransactionCard({
    super.key,
    required this.history,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        DetailTransactionPage.route,
        arguments: history,
      ),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(history.transactionTime),
            const SpaceHeight(height: 4.0),
            Row(
              children: [
                Text(history.paymentMethod),
                const Text(' - '),
                Text(
                  history.totalPrice.currencyFormatRp,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
