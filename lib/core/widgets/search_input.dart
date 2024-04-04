import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;

  const SearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextFormField(
        onTap: onTap,
        readOnly: onTap != null,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Cari di sini',
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
          ),
          prefixIcon: const Icon(Icons.search),
          contentPadding: const EdgeInsets.all(12.0),
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
    );
  }
}
