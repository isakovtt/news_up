import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_paddings.dart';
import '../../utils/helpers/navigate.dart';
import '../pages/detail/detail_news_screen.dart';
import 'global_divider.dart';
import 'horizontal_dots.dart';
import 'list_tile_cotegory_name.dart';
import 'list_tile_image.dart';
import 'time_and_comment.dart';
import 'list_tile_title.dart';

class StoriesListTile extends StatelessWidget {
  const StoriesListTile(
      {super.key,
      required this.sourceIcon,
      required this.image,
      required this.cotegoryName,
      required this.headlineText,
      required this.commentText,
      required this.timeText,
      required this.sourceName});

  final String sourceIcon;
  final String image;
  final String cotegoryName;
  final String headlineText;
  final String commentText;
  final String timeText;
  final String sourceName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: AppPaddings.all0,
      minLeadingWidth: 0,
      title: Column(
        children: [
          Row(
            children: [
              ListTileImage(image: image),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ListTileCotegoryName(text: cotegoryName),
                      20.horizontalSpace,
                      const HorizontalDots(),
                    ],
                  ),
                  6.verticalSpace,
                  GestureDetector(
                    onTap: () {
                      Navigate.navigatePush(
                        context,
                        const DetailNewsScreen(),
                      );
                    },
                    child: ListTileTitle(text: headlineText),
                  ),
                  12.verticalSpace,
                  TimeAndComment(
                    hasSource: true,
                    sourceIcon: sourceIcon,
                    sourceName: sourceName,
                    clockText: timeText,
                    commentCountText: commentText,
                  ),
                ],
              ),
            ],
          ),
          16.verticalSpace,
          const GlobalDivider(),
        ],
      ),
    );
  }
}
