import 'package:flutter/material.dart';
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

import '../../../core/constants/app_colors.dart';

class MenuPrinterContent extends StatelessWidget {
  final BluetoothInfo data;
  final bool isSelected;
  const MenuPrinterContent({
    Key? key,
    required this.data,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: isSelected ? 3.0 : 1.0,
          color: isSelected ? AppColors.primary : AppColors.border,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name : ${data.name}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'macAddress: ${data.macAdress}',
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
