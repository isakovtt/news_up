import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_box_decorations.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../widgets/global_divider.dart';
import '../../widgets/horizontal_dots.dart';
import '../../widgets/list_tile_cotegory_name.dart';
import '../../widgets/list_tile_title.dart';
import '../../widgets/time_and_comment.dart';

class ListDetailItem extends StatelessWidget {
  const ListDetailItem(
      {super.key,
      required this.image,
      required this.cotegory,
      required this.title,
      required this.timeCount,
      required this.commentCount});

  final String image;
  final String cotegory;
  final String title;
  final String timeCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minVerticalPadding: 0,
          contentPadding: AppPaddings.all0,
          minLeadingWidth: 0,
          title: Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: AppBoxDecorations.circular18,
                child: Image.asset(
                  image,
                  width: 80.r,
                  height: 80.r,
                  fit: BoxFit.cover,
                ),
              ),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ListTileCotegoryName(text: cotegory),
                      20.horizontalSpace,
                      const HorizontalDots(),
                    ],
                  ),
                  4.verticalSpace,
                  ListTileTitle(text: title),
                  12.verticalSpace,
                  TimeAndComment(
                    clockText: timeCount,
                    commentCountText: commentCount,
                  )
                ],
              ),
            ],
          ),
        ),
        16.verticalSpace,
        const GlobalDivider()
      ],
    );
  }
}
