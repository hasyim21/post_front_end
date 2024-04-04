import 'package:flutter/material.dart';

import '../../../core/widgets/spaces.dart';
import '../../../core/constants/app_colors.dart';

class SyncMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const SyncMenuItem({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48.0,
              ),
              const SpaceHeight(height: 4.0),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
