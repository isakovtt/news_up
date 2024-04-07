import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../widgets/global_switch.dart';

class NotificationsBox extends StatelessWidget {
  const NotificationsBox({
    super.key,
    required this.title,
    required this.subTitle,
    this.hasSwitch = false,
    this.isSwitched = false,
  });

  final String title;
  final String subTitle;
  final bool hasSwitch;
  final bool isSwitched;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.othersGrey,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: AppPaddings.all16,
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.othersBlackS14W700,
                ),
                2.verticalSpace,
                Text(
                  subTitle,
                  style: AppTextStyles.greyScale400s12W400,
                ),
              ],
            ),
            const Spacer(),
            if (hasSwitch == false) ...[
              SvgPicture.asset(AppAssets.arrowForward)
            ],
            if (hasSwitch == true) ...[const GlobalSwitch()]
          ],
        ),
      ),
    );
  }
}
