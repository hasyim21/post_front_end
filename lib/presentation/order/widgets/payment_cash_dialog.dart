import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';
import 'package:pos_front_end/core/utils/string_ext.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/sqlite_service.dart';
import '../bloc/order/order_bloc.dart';
import '../models/order_model.dart';
import 'payment_success_dialog.dart';

class PaymentCashDialog extends StatefulWidget {
  final int totalPrice;
  final int? discount;
  const PaymentCashDialog({super.key, required this.totalPrice, this.discount});

  @override
  State<PaymentCashDialog> createState() => _PaymentCashDialogState();
}

class _PaymentCashDialogState extends State<PaymentCashDialog> {
  TextEditingController? priceController;

  @override
  void initState() {
    priceController =
        TextEditingController(text: widget.totalPrice.currencyFormatRp);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(24.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Pembayaran Tunai',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SpaceHeight(height: 24.0),
            CustomTextField(
              controller: priceController!,
              label: '',
              showLabel: false,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                final int priceValue = value.toIntegerFromText;
                priceController!.text = priceValue.currencyFormatRp;
                priceController!.selection = TextSelection.fromPosition(
                  TextPosition(offset: priceController!.text.length),
                );
              },
            ),
            const SpaceHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Button.filled(
                    label: 'Rp 10.000',
                    fontSize: 14.0,
                    height: 40.0,
                    color: Colors.grey,
                    onPressed: () {
                      priceController!.text = 'Rp 10.000';
                    },
                  ),
                ),
                const SpaceWidth(12.0),
                Expanded(
                  child: Button.filled(
                    label: 'Rp 20.000',
                    fontSize: 14.0,
                    height: 40.0,
                    color: Colors.grey,
                    onPressed: () {
                      priceController!.text = 'Rp 20.000';
                    },
                  ),
                ),
              ],
            ),
            const SpaceHeight(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Button.filled(
                    label: 'Rp 50.000',
                    fontSize: 14.0,
                    height: 40.0,
                    color: Colors.grey,
                    onPressed: () {
                      priceController!.text = 'Rp 50.000';
                    },
                  ),
                ),
                const SpaceWidth(12.0),
                Expanded(
                  child: Button.filled(
                    label: 'Rp 100.000',
                    fontSize: 14.0,
                    height: 40.0,
                    color: Colors.grey,
                    onPressed: () {
                      priceController!.text = 'Rp 100.000';
                    },
                  ),
                ),
              ],
            ),
            const SpaceHeight(height: 24.0),
            Divider(color: AppColors.grey),
            const SpaceHeight(height: 24.0),
            Row(
              children: [
                Expanded(
                  child: Button.outlined(
                    onPressed: () => Navigator.pop(context),
                    label: 'Batal',
                  ),
                ),
                const SpaceWidth(12.0),
                Expanded(
                  child: BlocConsumer<OrderBloc, OrderState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        success: (
                          orders,
                          totalQuantity,
                          totalPrice,
                          paymentMethod,
                          paymentAmount,
                          changeAmount,
                          cashierId,
                          cashierName,
                        ) {
                          final orderModel = OrderModel(
                            paymentMethod: paymentMethod,
                            paymentAmount: paymentAmount,
                            changeAmount: paymentAmount - widget.totalPrice,
                            orders: orders,
                            totalQuantity: totalQuantity,
                            subtotalProduk: totalPrice,
                            totalPrice: widget.totalPrice,
                            discount: widget.discount ?? 0,
                            cashierId: cashierId,
                            cashierName: cashierName,
                            //tranction time format 2024-01-03T22:12:22
                            transactionTime:
                                DateFormat('yyyy-MM-ddTHH:mm:ss').format(
                              DateTime.now(),
                            ),
                            isSync: false,
                          );
                          SQLiteService.instance.saveOrder(orderModel);
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) => PaymentSuccessDialog(
                                totalPrice: widget.totalPrice),
                          );
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return const SizedBox();
                        },
                        success: (
                          orders,
                          totalQuantity,
                          totalPrice,
                          paymentMethod,
                          paymentAmount,
                          changeAmount,
                          cashierId,
                          cashierName,
                        ) {
                          return Button.filled(
                            onPressed: () {
                              context.read<OrderBloc>().add(
                                    OrderEvent.addPaymentAmount(
                                      priceController!.text.toIntegerFromText,
                                    ),
                                  );
                            },
                            label: 'Bayar',
                          );
                        },
                        error: (message) {
                          return const SizedBox();
                        },
                      );
                    },
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
