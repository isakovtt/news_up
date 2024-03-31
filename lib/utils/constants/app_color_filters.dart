import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppColorFilters {
  AppColorFilters._();

  static ColorFilter get greyScale400SrcIn {
    return const ColorFilter.mode(
      AppColors.greyScale_400,
      BlendMode.srcIn,
    );
  }

  static ColorFilter get primaryBaseSrcIn {
    return const ColorFilter.mode(
      AppColors.primaryBase,
      BlendMode.srcIn,
    );
  }
}
