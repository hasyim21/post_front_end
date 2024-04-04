import 'package:flutter/material.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';

class ProductEmpty extends StatelessWidget {
  const ProductEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.orders.svg(width: 114.0),
            const SpaceHeight(),
            Text(
              'Belum ada produk',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
