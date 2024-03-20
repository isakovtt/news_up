import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class AppBoxDecorations {
  const AppBoxDecorations._();

  static BoxDecoration get greyScale100R1000 {
    return const BoxDecoration(
      color: AppColors.greyScale_100,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    );
  }

  static BoxDecoration get greyScale50R1000 {
    return const BoxDecoration(
      color: AppColors.greyScale_500,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    );
  }
}
