import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:newsup_app/presentation/widgets/global_circle_rectangle.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_box_decorations.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        leading: Padding(
          padding: AppPaddings.l24,
          child: Center(
            child: SvgPicture.asset(
              AppAssets.arrowNarrowLeft,
              height: 32.h,
              width: 32.w,
            ),
          ),
        ),
        title: Text(
          AppTexts.comment,
          style: AppTextStyles.greyScale900s16W700,
        ),
      ),
      body: Column(
        children: [
          ColoredBox(
            color: AppColors.greyScale_200,
            child: ListTile(
              horizontalTitleGap: 0,
              minVerticalPadding: 1,
              // contentPadding: AppPaddings.h24,
              titleAlignment: ListTileTitleAlignment.titleHeight,
              leading: CircleAvatar(
                backgroundColor: AppColors.greyScale_200,
                child: Image.asset(
                  AppAssets.commentPicture_1,
                ),
              ),
              title: ColoredBox(
                color: AppColors.greyScale_300,
                child: ListTile(
                  title: Text(
                    'Alex Moa Mora',
                    style: AppTextStyles.greyScale900s14W700,
                  ),
                  subtitle: Text(
                    '13m ago',
                    style: AppTextStyles.greyScale400s12W500,
                  ),
                ),
              ),
              trailing: SvgPicture.asset(
                AppAssets.dotsGrey,
              ),
              subtitle: Padding(
                padding: AppPaddings.l16,
                child: Text(
                  'Russia withdraws troops near Ukraine. but I found the market price to recover quite slowly.',
                  style: AppTextStyles.greyScale900s12W400,
                ),
              ),
            ),
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlobalCircleRectangle(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    height: 13,
                    width: 11,
                    AppAssets.heart,
                    colorFilter: const ColorFilter.mode(
                        AppColors.greyScale_400, BlendMode.srcIn),
                  ),
                  4.horizontalSpace,
                  Text(
                    '0  Likes',
                    style: AppTextStyles.greyScale400s12W500,
                  ),
                ],
              )),
              Row()
            ],
          ),
        ],
      ),
    );
  }
}
