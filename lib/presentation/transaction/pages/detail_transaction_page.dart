import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../home/models/order_item.dart';
import '../../order/models/order_model.dart';
import '../widgets/product_detail_transaction.dart';

class DetailTransactionPage extends StatelessWidget {
  static String route = '/detail_transaction';

  final OrderModel history;

  const DetailTransactionPage({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Transaksi'),
        shape: Border(
          bottom: BorderSide(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Metode Pembayaran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  history.paymentMethod,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
                const SpaceHeight(),
                _buildInfoRow(
                  'Waktu Pemesanan',
                  _formatDateTime(history.transactionTime),
                ),
                _buildInfoRow(
                  'Subtotal Produk',
                  history.subtotalProduk.currencyFormatRp,
                ),
                _buildInfoRow(
                  'Total Diskon',
                  '-${history.discount.currencyFormatRp}',
                ),
                _buildInfoRow(
                  'Nominal Bayar',
                  history.paymentAmount.currencyFormatRp,
                ),
                _buildInfoRow(
                  'Kembalian',
                  history.changeAmount.currencyFormatRp,
                ),
                _buildInfoRow(
                  'Total Belanja',
                  history.totalPrice.currencyFormatRp,
                  isBold: true,
                ),
              ],
            ),
          ),
          const SpaceHeight(),
          Container(
            padding: const EdgeInsets.all(12.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Daftar Produk',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SpaceHeight(),
                ListView.separated(
                  itemCount: history.orders.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SpaceHeight(),
                  itemBuilder: (context, index) {
                    OrderItem order = history.orders[index];
                    return ProductDetailTransaction(order: order);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedDateTime = DateFormat('dd-MM-yyyy HH:mm').format(dateTime);
    return formattedDateTime;
  }

  Widget _buildInfoRow(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
              color: isBold ? Colors.black : Colors.grey.shade500,
              fontWeight: isBold ? FontWeight.bold : null),
        ),
        Text(
          value,
          style: TextStyle(
            color: isBold ? Colors.black : Colors.grey.shade500,
            fontWeight: isBold ? FontWeight.bold : null,
          ),
        ),
      ],
    );
  }
}
