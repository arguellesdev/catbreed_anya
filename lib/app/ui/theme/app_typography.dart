import 'package:flutter/material.dart';
import 'package:my_app/app/ui/theme/app_colors.dart';

/// This class centralizes text styles used across the app.
class AppTypography {
  AppTypography._();

  static const String primaryFont = 'Inter';

  // Titles
  static const TextStyle titleLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    fontFamily: primaryFont,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    fontFamily: primaryFont,
  );

  // Body text
  static const TextStyle body = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
    fontFamily: primaryFont,
  );

  static const TextStyle small = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w200,
    color: AppColors.textSecondary,
    fontFamily: primaryFont,
  );
}
