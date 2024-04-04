import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_front_end/core/utils/date_time_ext.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../../data/services/receipt_service.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../main/pages/main_page.dart';
import '../bloc/order/order_bloc.dart';

class PaymentSuccessDialog extends StatelessWidget {
  final int totalPrice;
  const PaymentSuccessDialog({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      scrollable: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Pembayaran Sukses',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SpaceHeight(height: 24.0),
          Center(
            child: Assets.icons.done.svg(),
          ),
          const SpaceHeight(),
        ],
      ),
      content: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            success: (
              products,
              totalQuantity,
              _,
              paymentMethod,
              paymentAmount,
              changeAmount,
              cashierId,
              cashierName,
            ) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _LabelValue(
                    label: 'METODE PEMBAYARAN',
                    value: paymentMethod,
                  ),
                  const MyDivider(),
                  _LabelValue(
                    label: 'TOTAL BELANJA',
                    value: totalPrice.currencyFormatRp,
                  ),
                  const MyDivider(),
                  _LabelValue(
                    label: 'NOMINAL BAYAR',
                    value: paymentMethod == 'QRIS'
                        ? totalPrice.currencyFormatRp
                        : paymentAmount.currencyFormatRp,
                  ),
                  const MyDivider(),
                  (paymentMethod == 'Tunai')
                      ? _LabelValue(
                          label: 'KEMBALIAN',
                          value: (paymentAmount - totalPrice).currencyFormatRp,
                        )
                      : const SizedBox(),
                  (paymentMethod == 'Tunai')
                      ? const MyDivider()
                      : const SizedBox(),
                  _LabelValue(
                    label: 'WAKTU PEMBAYARAN',
                    value: DateTime.now().toFormattedTime(),
                  ),
                  const SpaceHeight(height: 24.0),
                  Divider(color: AppColors.grey),
                  const SpaceHeight(height: 24.0),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Button.filled(
                          label: 'Selesai',
                          onPressed: () {
                            context.read<OrderBloc>().add(
                                  const OrderEvent.started(),
                                );
                            context.read<CheckoutBloc>().add(
                                  const CheckoutEvent.started(),
                                );
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              MainPage.route,
                              (route) => false,
                            );
                          },
                        ),
                      ),
                      const SpaceWidth(12.0),
                      Expanded(
                        child: Button.outlined(
                          label: 'Print',
                          icon: Assets.icons.print.svg(
                            colorFilter: const ColorFilter.mode(
                              AppColors.primary,
                              BlendMode.srcIn,
                            ),
                          ),
                          onPressed: () async {
                            final printValue =
                                await PosPrint.instance.printOrder(
                              products: products,
                              totalQuantity: totalQuantity,
                              totalPrice: totalPrice,
                              paymentMethod: paymentMethod,
                              paymentAmount: paymentAmount,
                              cashierName: cashierName,
                            );
                            await PrintBluetoothThermal.writeBytes(printValue);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: DottedLine(
        lineThickness: 1.0,
        dashLength: 10.0,
        dashColor: AppColors.grey,
      ),
    );
  }
}

class _LabelValue extends StatelessWidget {
  final String label;
  final String value;

  const _LabelValue({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(),
        ),
        const SpaceHeight(height: 4.0),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
