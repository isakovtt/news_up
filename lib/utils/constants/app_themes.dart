import 'package:flutter/material.dart';
import 'app_colors.dart';
import '../extensions/color_extensions.dart';
import '../helpers/configs.dart';

class AppThemes {
  const AppThemes._();

  static ThemeData get appTheme => ThemeData(
        useMaterial3: true,
        fontFamily: Configs.appFontFamily,
        scaffoldBackgroundColor: AppColors.white,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.greyScale_900.toMaterialColor,
          backgroundColor: AppColors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.greyScale_900,
        ),
      );
}
