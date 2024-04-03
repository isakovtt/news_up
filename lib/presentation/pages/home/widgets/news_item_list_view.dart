import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../detail/detail_news_screen.dart';
import '../../../widgets/horizontal_dots.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/list_tile_cotegory_name.dart';
import '../../../widgets/list_tile_image.dart';
import '../../../widgets/list_tile_title.dart';
import '../../../widgets/list_tile_time_and_comment.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../../utils/constants/app_paddings.dart';

class NewsItemListView extends StatelessWidget {
  const NewsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: ListView.separated(
        padding: AppPaddings.b16,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: newsheadline.length,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final headline = newsheadline[index];
          return ListTile(
            minVerticalPadding: 0,
            contentPadding: AppPaddings.all0,
            minLeadingWidth: 0,
            title: Row(
              children: [
                ListTileImage(image: headline.image),
                16.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ListTileCotegoryName(text: headline.categoryText),
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
                      child: ListTileTitle(text: headline.headlineText),
                    ),
                    12.verticalSpace,
                    ListTileTimeAndComment(
                      hasSource: true,
                      sourceIcon: headline.sourceIcon,
                      sourceName: headline.sourceName,
                      clockText: headline.timeText,
                      commentCountText: headline.commentText,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
