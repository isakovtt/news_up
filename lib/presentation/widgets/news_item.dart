import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_box_decorations.dart';
import '../../utils/constants/app_text_styles.dart';
import 'horizontal_dots.dart';
import 'news_cotegory_and_shared_time.dart';
import 'news_source_icon_and_name.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
    required this.image,
    required this.sourceIcon,
    required this.categoryText,
    required this.headlineText,
    required this.sourceName,
    required this.sharedTimeText,
    this.onTapDots,
    this.onTap,
  });

  final String image;
  final String sourceIcon;
  final String categoryText;
  final String headlineText;
  final String sourceName;
  final String sharedTimeText;
  final Function()? onTapDots;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80.h,
              clipBehavior: Clip.antiAlias,
              decoration: AppBoxDecorations.circular18,
              child: Image.file(
                File(image),
                fit: BoxFit.cover,
                height: 80.h,
                width: double.infinity,
                filterQuality: FilterQuality.high,
              ),
            ),
            16.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                NewsSourceIconAndName(
                  sourceIcon: sourceIcon,
                  sourceName: sourceName,
                ),
                const Spacer(),
                HorizontalDots(onTap: onTapDots),
              ],
            ),
            6.verticalSpace,
            Text(
              headlineText,
              style:
                  AppTextStyles.greyScale900s14W500.copyWith(fontSize: 13.sp),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            12.verticalSpace,
            NewsCotegoryAndSharedTime(
              cotegoryText: categoryText,
              sharedTimeText: sharedTimeText,
            ),
          ],
        ),
      ),
    );
  }
}
