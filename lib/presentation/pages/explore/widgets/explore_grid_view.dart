import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/hot_news_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/news_item.dart';

class ExploreGridView extends StatelessWidget {
  const ExploreGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: hotNews.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 200.h,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final news = hotNews[index];
          return NewsItem(
            image: news.image,
            headlineText: news.headlineText,
            sourceIcon: news.sourceIcon,
            sourceName: news.sourceName,
            categoryText: news.categoryText,
            sharedTimeText: news.sharedTimeText,
          );
        },
      ),
    );
  }
}
