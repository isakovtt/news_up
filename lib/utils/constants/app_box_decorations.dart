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
      color: AppColors.greyScale_50,
      borderRadius: BorderRadius.all(
        Radius.circular(1000),
      ),
    );
  }

  static BoxDecoration get circular18 {
    return const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(18),
      ),
    );
  }

   static BoxDecoration get whiteCircularLR24 {
    return const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: AppColors.white,
          );
  }

  static BoxDecoration get circular12 {
    return const BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    );
  }

static BoxDecoration get greyScale900R12 {
    return  BoxDecoration(
              color: AppColors.greyScale_900,
              borderRadius: BorderRadius.circular(12),
            );
  }
  static BoxDecoration get greyScale100R12 {
    return BoxDecoration(
      color: AppColors.greyScale_100,
      borderRadius: BorderRadius.circular(12),
    );
  }
}
