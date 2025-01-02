import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/constants/app_paddings.dart';
import '../pages/profile/widgets/profile_stories_image.dart';
import 'global_divider.dart';
import 'horizontal_dots.dart';
import 'list_tile_cotegory_name.dart';
import 'list_tile_title.dart';
import 'time_and_comment.dart';

class StoriesListTile extends StatelessWidget {
  const StoriesListTile(
      {super.key,
      required this.sourceIcon,
      required this.image,
      required this.cotegoryName,
      required this.headlineText,
      required this.commentCountText,
      required this.timeText,
      required this.sourceName,
      this.commentOnTap, this.dotsOnTap});

  final String sourceIcon;
  final String image;
  final String cotegoryName;
  final String headlineText;
  final String commentCountText;
  final String timeText;
  final String sourceName;
  final void Function()? commentOnTap;
  final void Function()? dotsOnTap;

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
              ProfileStoriesImage(image: image),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ListTileCotegoryName(text: cotegoryName),
                      20.horizontalSpace,
                      HorizontalDots(onTap: dotsOnTap),
                    ],
                  ),
                  6.verticalSpace,
                  ListTileTitle(text: headlineText),
                  12.verticalSpace,
                  TimeAndComment(
                    commentOnTap: commentOnTap,
                    hasSource: true,
                    sourceIcon: sourceIcon,
                    sourceName: sourceName,
                    clockText: timeText,
                    commentCountText: commentCountText,
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
