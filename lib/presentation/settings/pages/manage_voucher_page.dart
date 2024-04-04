import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../bloc/voucher/voucher_bloc.dart';
import '../widgets/coupon_widget.dart';
import 'add_voucher_page.dart';

class ManageVoucherPage extends StatefulWidget {
  static String route = '/manage_voucher';

  const ManageVoucherPage({super.key});

  @override
  State<ManageVoucherPage> createState() => _ManageVoucherPageState();
}

class _ManageVoucherPageState extends State<ManageVoucherPage> {
  @override
  void initState() {
    super.initState();
    context.read<VoucherBloc>()
      ..add(const VoucherEvent.getVouchers())
      ..add(const VoucherEvent.deleteExpiredVouchers());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Voucher'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: BlocBuilder<VoucherBloc, VoucherState>(
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
                return ListView.separated(
                  padding: const EdgeInsets.all(12.0),
                  itemCount: vouchers.length,
                  separatorBuilder: (context, index) => const SpaceHeight(),
                  itemBuilder: (context, index) {
                    final voucher = vouchers[index];
                    return Dismissible(
                      key: Key(voucher.voucherCode),
                      onDismissed: (direction) {
                        context.read<VoucherBloc>().add(
                              VoucherEvent.deleteVoucher(voucher.id!),
                            );
                      },
                      direction: DismissDirection.endToStart,
                      background: Container(
                        color: Colors.red,
                        padding: const EdgeInsets.all(16.0),
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete_outline,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: CouponWidget(voucher: voucher),
                    );
                  },
                );
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddVoucherPage.route);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
