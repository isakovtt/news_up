import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class AppColorFilters {
  AppColorFilters._();

  static ColorFilter get greyScale400SrcIn {
    return const ColorFilter.mode(
      AppColors.greyScale_400,
      BlendMode.srcIn,
    );
  }
}
