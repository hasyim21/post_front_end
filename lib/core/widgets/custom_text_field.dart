import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'spaces.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType? keyboardType;
  final bool showLabel;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.keyboardType,
    this.showLabel = true,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel) ...[
          Text(
            label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SpaceHeight(),
        ],
        Container(
          height: 50.0,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
              suffixIcon: suffixIcon,
              hintText: label,
              hintStyle: const TextStyle(
                fontSize: 14.0,
              ),
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
            ),
          ),
        ),
      ],
    );
  }
}
