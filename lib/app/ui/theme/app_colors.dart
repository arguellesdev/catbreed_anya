import 'package:flutter/material.dart';

/// This class defines all custom colors used throughout the app.
class AppColors {
  AppColors._();

  //Primary Colors
  static const Color primary = Color.fromARGB(255, 234, 140, 1);
  static const Color secondary = Color(0xFFFFD54F);
  static const Color accent = Color.fromARGB(255, 229, 185, 119);

  //Text Colors
  static const Color textPrimary = Colors.black87;
  static const Color textSecondary = Color.fromARGB(137, 46, 44, 44);
  static const Color textLight = Color.fromARGB(255, 232, 225, 225);

  //Background Colors
  static const Color background = Colors.white;
  static const Color cardBackground = Color.fromARGB(255, 233, 229, 229);

  //Error & Warnings
  static const Color error = Color(0xFFB71C1C);
  static const Color warning = Color.fromARGB(255, 241, 176, 13);

  //Success & Actions
  static const Color success = Color.fromARGB(255, 89, 152, 91);
}
