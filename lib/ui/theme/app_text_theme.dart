import 'package:flutter/material.dart';
import 'package:flutter_practica1_app/ui/theme/app_colors.dart';

class AppTextTheme {
  static TextStyle titleAppBar({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 18.0,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h2Bold({
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontSize: 25.0,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle titleBold({
    Color color = AppColors.kSubTitle,
  }) {
    return TextStyle(
      fontSize: 16.0,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle titleMedium({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 14.0,
      color: color,
    );
  }

  static TextStyle subTitle({
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontSize: 14.0,
      color: color,
    );
  }
}
