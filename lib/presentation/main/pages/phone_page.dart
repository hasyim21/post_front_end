import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../home/pages/home_page.dart';
import '../widgets/navigation_item.dart';
import '../../order/pages/orders_page.dart';
import '../../settings/pages/settings_page.dart';
import '../../transaction/pages/transaction_page.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({super.key});

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  final List<Widget> _pages = [
    const HomePage(),
    const OrdersPage(),
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
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(
            top: BorderSide(
              color: AppColors.border,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationItem(
              iconPath: Icons.home_outlined,
              label: 'Home',
              isActive: _selectedIndex == 0,
              onTap: () => _onItemTapped(0),
            ),
            NavigationItem(
              iconPath: Icons.shopping_cart_outlined,
              label: 'Order',
              isActive: _selectedIndex == 1,
              onTap: () {
                Navigator.pushNamed(context, OrdersPage.route);
              },
            ),
            NavigationItem(
              iconPath: Icons.receipt_long_outlined,
              label: 'Transaksi',
              isActive: _selectedIndex == 2,
              onTap: () => _onItemTapped(2),
            ),
            NavigationItem(
              iconPath: Icons.settings_outlined,
              label: 'Setelan',
              isActive: _selectedIndex == 3,
              onTap: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}
