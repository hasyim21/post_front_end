import 'package:flutter/material.dart';

import '../../data/services/shared_prefs_service.dart';
import '../../presentation/home/pages/home_page.dart';
import '../../presentation/login/pages/login_page.dart';
import '../../presentation/main/pages/main_page.dart';
import '../../presentation/order/models/order_model.dart';
import '../../presentation/order/pages/orders_page.dart';
import '../../presentation/order/pages/payment_page.dart';
import '../../presentation/settings/pages/add_product_page.dart';
import '../../presentation/settings/pages/add_voucher_page.dart';
import '../../presentation/settings/pages/manage_printer_page.dart';
import '../../presentation/settings/pages/manage_product_page.dart';
import '../../presentation/settings/pages/manage_voucher_page.dart';
import '../../presentation/settings/pages/profile_store_page.dart';
import '../../presentation/settings/pages/qris_server_key_page.dart';
import '../../presentation/settings/pages/settings_page.dart';
import '../../presentation/settings/pages/sync_data_page.dart';
import '../../presentation/transaction/pages/detail_transaction_page.dart';
import '../../presentation/transaction/pages/transaction_page.dart';

class AppRoute {
  static const String initialRoute = '/';

  static final routes = {
    initialRoute: (context) => _buildInitialPage(),
    LoginPage.route: (context) => const LoginPage(),
    MainPage.route: (context) => const MainPage(),
    HomePage.route: (context) => const HomePage(),
    OrdersPage.route: (context) => const OrdersPage(),
    PaymentPage.route: (context) => PaymentPage(
          totalPrice: ModalRoute.of(context)!.settings.arguments as int,
        ),
    TransactionPage.route: (context) => const TransactionPage(),
    DetailTransactionPage.route: (context) => DetailTransactionPage(
          history: ModalRoute.of(context)!.settings.arguments as OrderModel,
        ),
    SettingsPage.route: (context) => const SettingsPage(),
    ProfileStorePage.route: (context) => const ProfileStorePage(),
    ManageProductPage.route: (context) => const ManageProductPage(),
    AddProductPage.route: (context) => const AddProductPage(),
    ManageVoucherPage.route: (context) => const ManageVoucherPage(),
    AddVoucherPage.route: (context) => const AddVoucherPage(),
    ManagePrinterPage.route: (context) => const ManagePrinterPage(),
    QrisServerKeyPage.route: (context) => const QrisServerKeyPage(),
    SyncDataPage.route: (context) => const SyncDataPage(),
  };

  static Widget _buildInitialPage() {
    return FutureBuilder<bool>(
      future: SharedPrefsService.isAuth(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data == true) {
          return const MainPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
