import 'package:flutter/material.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';

class SettingItem extends StatelessWidget {
  final IconData icon;
  final Color? iconColors;
  final String label;
  final VoidCallback onTap;

  const SettingItem({
    super.key,
    required this.icon,
    this.iconColors,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
          border: Border.all(
            width: 1.0,
            color: AppColors.border,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24.0,
              color: iconColors ?? AppColors.primary,
            ),
            const SpaceWidth(12.0),
            Text(label),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
              color: AppColors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
