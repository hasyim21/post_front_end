import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/show_loading.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';
import '../../login/pages/login_page.dart';
import '../bloc/logout/logout_bloc.dart';
import '../widgets/setting_item.dart';
import '../widgets/user_profile.dart';
import 'manage_voucher_page.dart';
import 'profile_store_page.dart';
import 'qris_server_key_page.dart';
import 'manage_printer_page.dart';
import 'manage_product_page.dart';
import 'sync_data_page.dart';

class SettingsPage extends StatelessWidget {
  static String route = '/settings';

  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setelan'),
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
          const UserProfile(),
          const SpaceHeight(height: 24.0),
          SettingItem(
            icon: Icons.shopping_bag_outlined,
            label: 'Profil Toko',
            onTap: () => Navigator.pushNamed(context, ProfileStorePage.route),
            // onTap: () => context.push(const ProfileStorePage()),
          ),
          const SpaceHeight(),
          SettingItem(
            icon: Icons.shopping_bag_outlined,
            label: 'Kelola Produk',
            onTap: () => Navigator.pushNamed(context, ManageProductPage.route),
          ),
          const SpaceHeight(),
          SettingItem(
            icon: Icons.discount_outlined,
            label: 'Kelola Voucher',
            onTap: () => Navigator.pushNamed(context, ManageVoucherPage.route),
          ),
          const SpaceHeight(),
          SettingItem(
            icon: Icons.print_outlined,
            label: 'Kelola Printer',
            onTap: () => Navigator.pushNamed(context, ManagePrinterPage.route),
          ),
          const SpaceHeight(),
          SettingItem(
            icon: Icons.qr_code_rounded,
            label: 'QRIS Server Key',
            onTap: () => Navigator.pushNamed(context, QrisServerKeyPage.route),
          ),
          const SpaceHeight(),
          SettingItem(
            icon: Icons.sync_outlined,
            label: 'Sinkronisasi  Data',
            onTap: () => Navigator.pushNamed(context, SyncDataPage.route),
          ),
          const SpaceHeight(),
          BlocListener<LogoutBloc, LogoutState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loading: () => showLoading(context),
                success: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    LoginPage.route,
                    (route) => false,
                  );
                },
              );
            },
            child: SettingItem(
              icon: Icons.logout_outlined,
              iconColors: AppColors.grey,
              label: 'Keluar',
              onTap: () {
                context.read<LogoutBloc>().add(const LogoutEvent.logout());
              },
            ),
          ),
        ],
      ),
    );
  }
}
