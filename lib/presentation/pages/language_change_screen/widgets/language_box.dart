import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';


class LanguageBox extends StatelessWidget {
  const LanguageBox({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyScale_100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: AppPaddings.all16,
        child: Row(
          children: [
            SvgPicture.asset(AppAssets.ukFlag),
            16.horizontalSpace,
            Text(
              text,
              style: AppTextStyles.greyScale900s16W400,
            ),
            const Spacer(),
            SizedBox(
              height: 24,
              width: 24,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
