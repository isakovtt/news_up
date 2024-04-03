import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../detail/detail_news_screen.dart';
import '../../../../utils/helpers/navigate.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/custom_basic_list_tile.dart';

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
          return GlobalBasicListTile(
            image: headline.image,
            categoryName: headline.categoryText,
            title: headline.headlineText,
            sourceIcon: headline.sourceIcon,
            sourceName: headline.sourceName,
            timeText: headline.timeText,
            commentText: headline.commentText,
            hasSource: true,
            onTap: () {
              Navigate.navigatePush(
                context,
                const DetailNewsScreen(),
              );
            },
          );
        },
      ),
    );
  }
}
