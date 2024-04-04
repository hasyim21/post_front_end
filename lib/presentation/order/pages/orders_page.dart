import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../widgets/order_card.dart';
import '../widgets/process_button.dart';
import 'payment_page.dart';

class OrdersPage extends StatefulWidget {
  static String route = '/orders';

  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final indexValue = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Order'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CheckoutBloc>().add(const CheckoutEvent.started());
            },
            icon: Assets.icons.delete.svg(
              colorFilter: const ColorFilter.mode(
                AppColors.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('Tidak ada order'),
              );
            },
            success: (products, _, totalPrice) {
              if (products.isEmpty) {
                return const Center(
                  child: Text('Tidak ada order'),
                );
              }

              return ListView.separated(
                padding: const EdgeInsets.all(12.0),
                itemCount: products.length,
                separatorBuilder: (context, index) => const SpaceHeight(),
                itemBuilder: (context, index) {
                  return OrderCard(
                    data: products[index],
                  );
                },
              );
            },
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<CheckoutBloc, CheckoutState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const SizedBox.shrink();
            },
            success: (products, _, totalPrice) {
              if (products.isEmpty) {
                return const SizedBox.shrink();
              }
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
                child: ProcessButton(
                  totalPrice: totalPrice,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      PaymentPage.route,
                      arguments: totalPrice,
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
