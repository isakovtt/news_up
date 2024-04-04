import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/presentation/widgets/global_circle_box.dart';
import 'package:newsup_app/presentation/widgets/global_button.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class ChannelListTile extends StatelessWidget {
  const ChannelListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: AppPaddings.lrb24t16,
      leading: GlobalCircleBox(
        child: SvgPicture.asset(
          AppAssets.cnnVector,
        ),
      ),
      title: Text(
        'CNN News',
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: AppTextStyles.greyScale900s20W700,
      ),
      subtitle: Text(
        'By Naiera Azzafron',
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: AppTextStyles.greyScale400s14W400,
      ),
      trailing: GlobalButton(
        height: 24.h,
        width: 64.w,
        color: AppColors.primaryBase,
        child: Center(
          child: Text(
            AppTexts.follow,
            style: AppTextStyles.whiteS10W500,
          ),
        ),
      ),
    );
  }
}
