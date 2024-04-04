import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import 'phone_page.dart';
import 'tablet_page.dart';

class MainPage extends StatelessWidget {
  static String route = '/main';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.background,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 700) {
            return const PhonePage();
          } else {
            return const TabletPage();
          }
        },
      ),
    );
  }
}
