import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';

import '../../home/pages/home_page.dart';
import '../../order/pages/orders_page.dart';
import '../../../core/constants/app_colors.dart';
import '../../settings/pages/settings_page.dart';
import '../../transaction/pages/transaction_page.dart';

class TabletPage extends StatefulWidget {
  const TabletPage({super.key});

  @override
  State<TabletPage> createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  final List<Widget> _pages = [
    Row(
      children: [
        const Expanded(
          flex: 2,
          child: HomePage(),
        ),
        SizedBox(
          height: double.infinity,
          child: VerticalDivider(
            color: AppColors.border,
            width: 1,
          ),
        ),
        const Expanded(
          child: OrdersPage(),
        ),
      ],
    ),
    const TransactionPage(),
    const SettingsPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            color: AppColors.white,
            child: SideNavigationBar(
              initiallyExpanded: false,
              expandable: false,
              selectedIndex: _selectedIndex,
              theme: SideNavigationBarTheme(
                itemTheme: SideNavigationBarItemTheme(
                  selectedItemColor: AppColors.primary,
                  unselectedItemColor: AppColors.grey,
                ),
                togglerTheme: const SideNavigationBarTogglerTheme(),
                dividerTheme: SideNavigationBarDividerTheme(
                  showFooterDivider: true,
                  showHeaderDivider: true,
                  showMainDivider: true,
                  mainDividerColor: AppColors.grey,
                ),
              ),
              items: const [
                SideNavigationBarItem(
                  icon: Icons.home_outlined,
                  label: 'Home',
                ),
                SideNavigationBarItem(
                  icon: Icons.receipt_long_outlined,
                  label: 'Transaksi',
                ),
                SideNavigationBarItem(
                  icon: Icons.settings_outlined,
                  label: 'Setelan',
                ),
              ],
              onTap: (index) => _onItemTapped(index),
            ),
          ),
          Expanded(
            child: _pages[_selectedIndex],
          )
        ],
      ),
    );
  }
}
