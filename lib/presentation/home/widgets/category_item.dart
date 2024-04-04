import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.iconPath,
    required this.label,
    this.isActive = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: isActive ? AppColors.primary : AppColors.border,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: ColorFilter.mode(
                isActive ? AppColors.white : Colors.grey.shade600,
                BlendMode.srcIn,
              ),
            ),
            const SpaceWidth(4.0),
            Text(
              label,
              style: TextStyle(
                color: isActive ? AppColors.white : Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
