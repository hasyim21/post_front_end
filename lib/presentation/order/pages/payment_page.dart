import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/alert_dialog.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/shared_prefs_service.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../settings/bloc/voucher/voucher_bloc.dart';
import '../bloc/order/order_bloc.dart';
import '../widgets/payment_cash_dialog.dart';
import '../widgets/payment_method_button.dart';
import '../widgets/payment_qris_dialog.dart';
import '../widgets/process_button.dart';
import '../widgets/show_discount_voucher.dart';

class PaymentPage extends StatefulWidget {
  static String route = '/payment';

  final int totalPrice;

  const PaymentPage({
    super.key,
    required this.totalPrice,
  });

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final indexValue = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    context.read<VoucherBloc>().add(const VoucherEvent.started());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: const Text('Pembayaran'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Subtotal Produk'),
                    Text(widget.totalPrice.currencyFormatRp),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Diskon'),
                    BlocBuilder<VoucherBloc, VoucherState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return const Text('0');
                          },
                          voucherResult: (_, discount, finalPrice) {
                            return Text('-${discount.currencyFormatRp}');
                          },
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total Pembayaran'),
                    BlocBuilder<VoucherBloc, VoucherState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Text(widget.totalPrice.currencyFormatRp);
                          },
                          voucherResult: (_, discount, finalPrice) {
                            return Text(finalPrice.currencyFormatRp);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const SizedBox.shrink();
                },
                success: (products, totalQuantity, totalPrice) {
                  if (products.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ValueListenableBuilder(
                        valueListenable: indexValue,
                        builder: (context, value, _) {
                          return Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              border: Border(
                                top: BorderSide(
                                  color: AppColors.border,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () async {
                                    context.read<VoucherBloc>()
                                      ..add(const VoucherEvent.getVouchers())
                                      ..add(const VoucherEvent
                                          .deleteExpiredVouchers());
                                    await showDiscountVoucher(
                                        context, totalPrice);
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 50.0,
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0),
                                      ),
                                      border: Border.all(
                                        color: AppColors.grey,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.discount_outlined,
                                    ),
                                  ),
                                ),
                                const SpaceWidth(12.0),
                                PaymentMethodButton(
                                  iconPath: Assets.icons.cash.path,
                                  label: 'Tunai',
                                  isActive: value == 1,
                                  onPressed: () {
                                    indexValue.value = 1;
                                    context.read<OrderBloc>().add(
                                        OrderEvent.addPaymentMethod(
                                            'Tunai', products));
                                  },
                                ),
                                const SpaceWidth(12.0),
                                PaymentMethodButton(
                                  iconPath: Assets.icons.qrCode.path,
                                  label: 'QRIS',
                                  isActive: value == 2,
                                  onPressed: () async {
                                    indexValue.value = 2;
                                    String serverKey = await SharedPrefsService
                                        .getMitransServerKey();
                                    if (serverKey.isEmpty && context.mounted) {
                                      return await showAlertDialog(
                                        context: context,
                                        content: 'QRIS Server Key harus diisi!',
                                      );
                                    }
                                    if (context.mounted) {
                                      context.read<OrderBloc>().add(
                                          OrderEvent.addPaymentMethod(
                                              'QRIS', products));
                                    }
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border(
                            top: BorderSide(
                              color: AppColors.border,
                            ),
                          ),
                        ),
                        child: BlocBuilder<VoucherBloc, VoucherState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return ProcessButton(
                                  totalPrice: totalPrice,
                                  onPressed: () async {
                                    String serverKey = await SharedPrefsService
                                        .getMitransServerKey();

                                    if (indexValue.value == 0 &&
                                        context.mounted) {
                                      await showAlertDialog(
                                        context: context,
                                        content: 'Pilih metode pembayaran!',
                                      );
                                    } else if (serverKey.isEmpty &&
                                        indexValue.value == 2 &&
                                        context.mounted) {
                                      await showAlertDialog(
                                        context: context,
                                        content: 'QRIS Server Key harus diisi!',
                                      );
                                    } else if (indexValue.value == 1 &&
                                        context.mounted) {
                                      await showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => PaymentCashDialog(
                                          totalPrice: totalPrice,
                                        ),
                                      );
                                    } else if (indexValue.value == 2 &&
                                        context.mounted) {
                                      await showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => PaymentQrisDialog(
                                          totalPrice: totalPrice,
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                              voucherResult: (message, discount, finalPrice) {
                                return ProcessButton(
                                  totalPrice: finalPrice,
                                  onPressed: () async {
                                    String serverKey = await SharedPrefsService
                                        .getMitransServerKey();

                                    if (indexValue.value == 0 &&
                                        context.mounted) {
                                      await showAlertDialog(
                                        context: context,
                                        content: 'Pilih metode pembayaran!',
                                      );
                                    } else if (serverKey.isEmpty &&
                                        indexValue.value == 2 &&
                                        context.mounted) {
                                      await showAlertDialog(
                                        context: context,
                                        content: 'QRIS Server Key harus diisi!',
                                      );
                                    } else if (indexValue.value == 1 &&
                                        context.mounted) {
                                      await showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => PaymentCashDialog(
                                          totalPrice: finalPrice,
                                          discount: discount,
                                        ),
                                      );
                                    } else if (indexValue.value == 2 &&
                                        context.mounted) {
                                      await showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => PaymentQrisDialog(
                                          totalPrice: finalPrice,
                                          discount: discount,
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
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
