import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pos_front_end/core/utils/build_context_ext.dart';

import '../constants/app_colors.dart';
import 'spaces.dart';

class MenuButton extends StatelessWidget {
  final bool isImage;
  final String iconPath;
  final String label;
  final bool isActive;
  final double size;
  final VoidCallback onPressed;

  const MenuButton({
    super.key,
    this.isImage = false,
    required this.iconPath,
    required this.label,
    this.isActive = false,
    this.size = 90,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        child: Container(
          width: context.deviceWidth,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary : AppColors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(6.0),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                blurStyle: BlurStyle.outer,
                spreadRadius: 0,
                color: AppColors.black.withOpacity(0.1),
              ),
            ],
          ),
          child: Column(
            children: [
              isImage
                  ? Image.asset(iconPath,
                      width: size, height: size, fit: BoxFit.contain)
                  : SvgPicture.asset(
                      iconPath,
                      colorFilter: ColorFilter.mode(
                        isActive ? AppColors.white : AppColors.primary,
                        BlendMode.srcIn,
                      ),
                    ),
              const SpaceHeight(),
              Text(
                label,
                style: TextStyle(
                  color: isActive ? AppColors.white : AppColors.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
