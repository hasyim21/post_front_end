import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData getTheme(BuildContext context) {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      textTheme: GoogleFonts.openSansTextTheme(
        Theme.of(context).textTheme,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: AppColors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.openSans(
          color: AppColors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: const IconThemeData(
          color: AppColors.primary,
        ),
      ),
    );
  }
}
