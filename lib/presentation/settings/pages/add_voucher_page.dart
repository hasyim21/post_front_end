import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:pos_front_end/core/utils/string_ext.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../core/widgets/date_picker_widget.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../bloc/voucher/voucher_bloc.dart';
import '../models/voucher_model.dart';

class AddVoucherPage extends StatefulWidget {
  static String route = '/add_voucher';

  const AddVoucherPage({super.key});

  @override
  State<AddVoucherPage> createState() => _AddVoucherPageState();
}

class _AddVoucherPageState extends State<AddVoucherPage> {
  final TextEditingController voucherNameController = TextEditingController();
  final TextEditingController voucherCodeController = TextEditingController();
  final TextEditingController discountPercentageController =
      TextEditingController();

  String? expiredDate;

  @override
  void dispose() {
    voucherNameController.dispose();
    voucherCodeController.dispose();
    discountPercentageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Voucher'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          CustomTextField(
            label: 'Nama Voucher',
            controller: voucherNameController,
          ),
          const SpaceHeight(),
          CustomTextField(
            controller: voucherCodeController,
            label: 'Kode Voucher',
          ),
          const SpaceHeight(),
          CustomTextField(
            controller: discountPercentageController,
            label: 'Jumlah Diskon (%)',
            keyboardType: TextInputType.number,
            onChanged: (value) {
              final int discountPercentage = value.toIntegerFromText;
              discountPercentageController.text = '$discountPercentage %';
              discountPercentageController.selection =
                  TextSelection.fromPosition(
                TextPosition(offset: discountPercentageController.text.length),
              );
            },
          ),
          const SpaceHeight(),
          MyDatePicker(
            label: 'Tanggal Kadaluarsa',
            onChanged: (value) {
              expiredDate = DateFormat('dd-MM-yyyy').format(value);
            },
          ),
          const SpaceHeight(height: 24.0),
          Row(
            children: [
              Expanded(
                child: Button.outlined(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: 'Batal',
                ),
              ),
              const SpaceWidth(12.0),
              Expanded(
                child: BlocConsumer<VoucherBloc, VoucherState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (_) {
                        Navigator.pop(context);
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return Button.filled(
                          onPressed: () {
                            final voucher = VoucherModel(
                              voucherName: voucherNameController.text,
                              voucherCode: voucherCodeController.text,
                              discountPercentage: discountPercentageController
                                  .text.toIntegerFromText,
                              expiredDate: expiredDate!,
                            );
                            context
                                .read<VoucherBloc>()
                                .add(VoucherEvent.addVoucher(voucher));
                          },
                          label: 'Simpan',
                        );
                      },
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
