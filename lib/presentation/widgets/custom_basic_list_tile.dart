import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/home/widgets/home_sheet.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

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
    required this.commentCount,
    this.onTap,
    required this.hasSource,
    this.hasDot = false,
    this.style,
    this.titleStyle,
    this.commentOnTap,
  });

  final String image;
  final String categoryName;
  final String title;
  final String sourceIcon;
  final String sourceName;
  final String timeText;
  final String commentCount;
  final Function()? onTap;
  final Function()? commentOnTap;
  final TextStyle? style;
  final bool hasSource;
  final bool hasDot;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
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
                    GestureDetector(
                      onTap: () {
                        final RenderBox box =
                            context.findRenderObject() as RenderBox;
                        final Offset position = box.localToGlobal(Offset.zero);
                        showPopupMenu(context, position);
                      },
                      child: const HorizontalDots(),
                    ),
                  ],
                ),
                6.verticalSpace,
                ListTileTitle(
                  text: title,
                  titleStyle: titleStyle,
                ),
                12.verticalSpace,
                TimeAndComment(
                  commentOnTap: commentOnTap,
                  hasDot: hasDot,
                  hasSource: hasSource,
                  sourceIcon: sourceIcon,
                  sourceName: sourceName,
                  clockText: timeText,
                  commentCountText: commentCount,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showPopupMenu(BuildContext context, Offset tapPosition) async {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final Offset position = overlay.globalToLocal(tapPosition);

  final double right = MediaQuery.of(context).size.width - position.dx;

  final RelativeRect positionRect = RelativeRect.fromLTRB(
    right,
    position.dy,
    MediaQuery.of(context).size.width - right,
    position.dy,
  );

  await showMenu(
    context: context,
    position: positionRect,
    color: AppColors.greyScale_50,
    // shape: Border.fromBorderSide(
    //   BorderSide(width: 2, color: AppColors.primary_100),
    // ),
    items: [
      const PopupMenuItem(
        value: 'report',
        child: Text('Report'),
      ),
       PopupMenuItem(
        onTap: () {
          HomeSheet.globalSheet(context);
        },
        value: 'save list',
        child: const Text('Save list'),
      ),
    ],
    elevation: 8.0,
  );
}
