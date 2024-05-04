import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/hot_news_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/helpers/navigate.dart';
import '../../../widgets/custom_basic_list_tile.dart';
import '../../detail/detail_news_screen.dart';

class ExploreListView extends StatelessWidget {
  const ExploreListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: ListView.separated(
        padding: AppPaddings.b16,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: hotNews.length,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final news = hotNews[index];
          return GlobalBasicListTile(
            image: news.image,
            title: news.headlineText,
            sourceIcon: news.sourceIcon,
            sourceName: news.sourceName,
            categoryName: news.categoryText,
            timeText: news.sharedTimeText,
            commentText: news.commentText!,
            hasSource: true,
            onTap: () {
              // Navigate.navigatePush(
              //   context,
              //   const DetailNewsScreen(),
              // );
            },
          );
        },
      ),
    );
  }
}
