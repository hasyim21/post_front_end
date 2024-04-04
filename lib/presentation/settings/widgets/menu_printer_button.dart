import 'package:flutter/material.dart';
import 'package:pos_front_end/core/utils/build_context_ext.dart';

import '../../../core/constants/app_colors.dart';

class MenuPrinterButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isActive;

  const MenuPrinterButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: context.deviceWidth,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isActive ? AppColors.white : AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
