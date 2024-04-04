import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'spaces.dart';

class CustomDropdown<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final String label;
  final Function(T? value)? onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.label,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SpaceHeight(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButtonFormField<T>(
            value: value,
            onChanged: onChanged,
            items: items.map((T item) {
              return DropdownMenuItem<T>(
                value: item,
                child: Text(item.toString()),
              );
            }).toList(),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: AppColors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
