import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/global_sheet.dart';

import '../../../../data/models/topic_news_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/news_item.dart';

class TopicGridView extends StatelessWidget {
  const TopicGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: topicNews.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 200.h,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final topic = topicNews[index];
          return NewsItem(
            image: topic.image,
            headlineText: topic.headlineText,
            sourceIcon: topic.sourceIcon,
            sourceName: topic.sourceName,
            categoryText: topic.categoryText,
            sharedTimeText: topic.sharedTimeText,
            onTapDots: () {
              GlobalSheet.globalSheet(context);
            },
          );
        },
      ),
    );
  }
}
