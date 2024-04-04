import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/show_loading_sync_data.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';

import '../bloc/product/product_bloc.dart';
import '../bloc/sync_order/sync_order_bloc.dart';
import '../widgets/sync_menu_item.dart';

class SyncDataPage extends StatelessWidget {
  static String route = '/sync_data';

  const SyncDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sinkronisasi Data'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            BlocListener<ProductBloc, ProductState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  loading: () => showLoadingSyncData(context),
                  success: (products) {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Sinkronisasi data produk sukses'),
                        backgroundColor: AppColors.black,
                      ),
                    );
                  },
                );
              },
              child: SyncMenuItem(
                icon: Icons.shopping_bag_outlined,
                label: 'Data Produk',
                onTap: () {
                  context
                      .read<ProductBloc>()
                      .add(const ProductEvent.syncToLocal());
                },
              ),
            ),
            const SpaceWidth(12.0),
            BlocListener<SyncOrderBloc, SyncOrderState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  loading: () => showLoadingSyncData(context),
                  success: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Sinkronisasi data order sukses',
                        ),
                        backgroundColor: AppColors.black,
                      ),
                    );
                  },
                );
              },
              child: SyncMenuItem(
                icon: Icons.shopping_cart_outlined,
                label: 'Data Order',
                onTap: () {
                  context
                      .read<SyncOrderBloc>()
                      .add(const SyncOrderEvent.sendOrder());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
