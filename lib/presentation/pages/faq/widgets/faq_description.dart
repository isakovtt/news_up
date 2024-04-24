import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_input.dart';

class FaqDescription extends StatelessWidget {
  const FaqDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColors.primary_500),
      child: Padding(
        padding: AppPaddings.h24,
        child: Column(
          children: [
            Text(
              AppTexts.faqDescription,
              style: AppTextStyles.whiteS24W700,
            ),
            16.verticalSpace,
            GlobalInput(
              borderRadius: 1000,
              prefixIcon: SvgPicture.asset(
                AppAssets.searchIcon,
                width: 20,
                height: 20,
              ),
              hintText: AppTexts.searchTitle,
              suffixIcon: SvgPicture.asset(
                AppAssets.microphoneIcon,
              ),
            ),
            24.verticalSpace,
          ],
        ),
      ),
    );
  }
}
