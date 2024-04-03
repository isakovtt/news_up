import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_paddings.dart';
import 'horizontal_dots.dart';
import 'list_tile_cotegory_name.dart';
import 'list_tile_image.dart';
import 'time_and_comment.dart';
import 'list_tile_title.dart';

class GlobalBasicListTile extends StatelessWidget {
  const GlobalBasicListTile({
    super.key,
    required this.image,
    required this.categoryName,
    required this.title,
    required this.sourceIcon,
    required this.sourceName,
    required this.timeText,
    required this.commentText,
    this.onTap,
    required this.hasSource,
    this.hasDot = false,
    this.style, this.titleStyle,
  });

  final String image;
  final String categoryName;
  final String title;
  final String sourceIcon;
  final String sourceName;
  final String timeText;
  final String commentText;
  final Function()? onTap;
  final TextStyle? style;
  final bool hasSource;
  final bool hasDot;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: AppPaddings.all0,
      minLeadingWidth: 0,
      title: Row(
        children: [
          ListTileImage(image: image),
          16.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ListTileCotegoryName(
                    text: categoryName,
                    style: style,
                  ),
                  20.horizontalSpace,
                  const HorizontalDots(),
                ],
              ),
              6.verticalSpace,
              GestureDetector(
                onTap: onTap,
                child: ListTileTitle(text: title,titleStyle: titleStyle,),
              ),
              12.verticalSpace,
              TimeAndComment(
                hasDot: hasDot,
                hasSource: hasSource,
                sourceIcon: sourceIcon,
                sourceName: sourceName,
                clockText: timeText,
                commentCountText: commentText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
