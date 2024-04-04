import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:intl/intl.dart';
import 'package:pos_front_end/core/utils/int_ext.dart';

import '../../presentation/home/models/order_item.dart';
import '../../presentation/settings/models/profile_store_model.dart';
import 'shared_prefs_service.dart';

class PosPrint {
  PosPrint._init();

  static final PosPrint instance = PosPrint._init();

  Future<List<int>> printOrder({
    required List<OrderItem> products,
    required int totalQuantity,
    required int totalPrice,
    required String paymentMethod,
    required int paymentAmount,
    required String cashierName,
  }) async {
    List<int> bytes = [];

    final ProfileStoreModel profileStore =
        await SharedPrefsService.getProfileStore();

    final profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm58, profile);

    bytes += generator.reset();
    // bytes += generator.text('Point Of Sales',
    //     styles: const PosStyles(
    //       bold: true,
    //       align: PosAlign.center,
    //       height: PosTextSize.size2,
    //       width: PosTextSize.size2,
    //     ));
    bytes += generator.text(profileStore.storeName,
        styles: const PosStyles(
          bold: true,
          align: PosAlign.center,
          height: PosTextSize.size1,
          width: PosTextSize.size1,
        ));

    bytes += generator.text(profileStore.storeAddress,
        styles: const PosStyles(bold: false, align: PosAlign.center));
    bytes += generator.feed(1);
    bytes += generator.text(
        'Tanggal: ${DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now())}',
        styles: const PosStyles(bold: false, align: PosAlign.left));
    // bytes += generator.text('Start 12 Desember 2023',
    //     styles: const PosStyles(bold: false, align: PosAlign.center));

    bytes += generator.feed(1);
    bytes += generator.text('Pesanan:',
        styles: const PosStyles(bold: false, align: PosAlign.left));
    // bytes += generator.feed(1);
    for (var product in products) {
      bytes += generator.text(product.product.name,
          styles: const PosStyles(align: PosAlign.left));

      bytes += generator.row([
        PosColumn(
          text: '${product.product.price} x ${product.quantity}',
          width: 8,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: '${product.product.price * product.quantity}',
          width: 4,
          styles: const PosStyles(align: PosAlign.right),
        ),
      ]);
    }

    bytes += generator.feed(1);

    bytes += generator.row([
      PosColumn(
        text: 'Total',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: totalPrice.currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Bayar',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: paymentAmount.currencyFormatRp,
        width: 6,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Pembayaran',
        width: 8,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: paymentMethod,
        width: 4,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    bytes += generator.row([
      PosColumn(
        text: 'Kasir',
        width: 8,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: cashierName,
        width: 4,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);
    bytes += generator.feed(1);
    bytes += generator.text('Terima Kasih',
        styles: const PosStyles(bold: false, align: PosAlign.center));
    bytes += generator.feed(3);

    return bytes;
  }
}
