import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;

import '../../../core/constants/app_colors.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';

class NavigationItem extends StatelessWidget {
  final IconData iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavigationItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        child: SizedBox(
          height: 42.0,
          child: Column(
            children: [
              label == 'Order' ? _buildOrderIcon() : _buildIcon(),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11.0,
                  color: isActive ? AppColors.primary : AppColors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<CheckoutBloc, CheckoutState> _buildOrderIcon() {
    return BlocBuilder<CheckoutBloc, CheckoutState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => _buildIcon(),
          success: (products, totalQuantity, _) {
            if (products.isEmpty) {
              return _buildIcon();
            }
            return badges.Badge(
              badgeStyle: const badges.BadgeStyle(
                badgeColor: AppColors.red,
                padding: EdgeInsets.all(5.0),
              ),
              badgeContent: Text(
                totalQuantity.toString(),
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 11.0,
                ),
              ),
              child: _buildIcon(),
            );
          },
        );
      },
    );
  }

  SizedBox _buildIcon() {
    return SizedBox(
      width: 25.0,
      height: 25.0,
      child: Icon(
        iconPath,
        size: 24.0,
        color: isActive ? AppColors.primary : AppColors.grey,
      ),
    );
  }
}
