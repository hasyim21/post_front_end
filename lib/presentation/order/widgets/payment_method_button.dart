import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';

class PaymentMethodButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onPressed;

  const PaymentMethodButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.isActive = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: isActive ? Colors.grey : AppColors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            border: Border.all(
              width: 1.0,
              color: isActive ? Colors.grey : AppColors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                height: 24.0,
                colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.black,
                  BlendMode.srcIn,
                ),
              ),
              const SpaceWidth(12.0),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: isActive ? AppColors.white : AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
