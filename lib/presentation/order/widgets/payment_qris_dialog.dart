import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos_front_end/core/utils/build_context_ext.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/sqlite_service.dart';
import '../bloc/order/order_bloc.dart';
import '../bloc/qris/qris_bloc.dart';
import '../models/order_model.dart';
import 'payment_success_dialog.dart';

class PaymentQrisDialog extends StatefulWidget {
  final int totalPrice;
  final int? discount;
  const PaymentQrisDialog({super.key, required this.totalPrice, this.discount});

  @override
  State<PaymentQrisDialog> createState() => _PaymentQrisDialogState();
}

class _PaymentQrisDialogState extends State<PaymentQrisDialog> {
  String orderId = '';
  Timer? timer;
  @override
  void initState() {
    orderId = DateTime.now().millisecondsSinceEpoch.toString();
    context.read<QrisBloc>().add(QrisEvent.generateQris(
          orderId,
          widget.totalPrice,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: EdgeInsets.zero,
      backgroundColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Pembayaran QRIS',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  onTap: () {
                    context.read<QrisBloc>().add(QrisEvent.cancelQris(orderId));
                  },
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                success: (orders, totalQuantity, totalPrice, paymentMethod,
                    paymentAmount, changeAmount, cashierId, cashierName) {
                  return Container(
                    width: context.deviceWidth,
                    padding: const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                      color: AppColors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        BlocConsumer<QrisBloc, QrisState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {
                                return;
                              },
                              qrisResponse: (_) {
                                const duration = Duration(seconds: 5);
                                timer = Timer.periodic(
                                  duration,
                                  (timer) {
                                    context.read<QrisBloc>().add(
                                          QrisEvent.checkQrisStatus(orderId),
                                        );
                                  },
                                );
                              },
                              success: (message) {
                                timer?.cancel();
                                log(message);
                                if (message == 'cancel') {
                                  return Navigator.pop(context);
                                }
                                final orderModel = OrderModel(
                                  paymentMethod: paymentMethod,
                                  paymentAmount: widget.totalPrice,
                                  changeAmount: 0,
                                  orders: orders,
                                  totalQuantity: totalQuantity,
                                  subtotalProduk: totalPrice,
                                  totalPrice: widget.totalPrice,
                                  discount: widget.discount ?? 0,
                                  cashierId: cashierId,
                                  cashierName: cashierName,
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
                              loading: () {
                                return Container(
                                  width: 256.0,
                                  height: 256.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              },
                              qrisResponse: (qrisResponse) {
                                log(qrisResponse.actions!.first.url!);
                                return Container(
                                  width: 256.0,
                                  height: 256.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Image.network(
                                      qrisResponse.actions!.first.url!,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        Text(
                          widget.totalPrice.currencyFormatRp,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SpaceHeight(height: 4.0),
                        const Text(
                          'Silahkan scan QRIS',
                          textAlign: TextAlign.center,
                          // style: TextStyle(
                          //   fontSize: 16,
                          // ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
