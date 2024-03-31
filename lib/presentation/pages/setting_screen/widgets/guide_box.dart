import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';


class GuideBox extends StatelessWidget {
  const GuideBox({
    super.key,
    required this.text,
    this.hasSwitch = false,
    this.isSwitched = false,
  });
  final String text;
  final bool hasSwitch;
  final bool isSwitched;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: AppTextStyles.greyScale900s16W400,
            ),
            const Spacer(),
            if (hasSwitch == false) ...[
              SvgPicture.asset(AppAssets.arrowForward)
            ],
            if (hasSwitch == true) ...[
              Switch(
                value: isSwitched,
                onChanged: (value) {},
                activeColor: AppColors.successLight,
                inactiveThumbColor: AppColors.white,
                inactiveTrackColor: AppColors.greyScale_200,
              )
            ]
          ],
        ),
        8.verticalSpace,
        const Divider(
          height: 1,
          color: AppColors.greyScale_100,
        )
      ],
    );
  }
}
