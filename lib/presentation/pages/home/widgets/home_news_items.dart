import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/home/widgets/news_headline_channel_source.dart';
import 'package:newsup_app/presentation/pages/home/widgets/news_headline_cotegory_and_dots.dart';
import 'package:newsup_app/presentation/pages/home/widgets/news_headline_image.dart';
import 'package:newsup_app/presentation/pages/home/widgets/news_headline_text.dart';
import 'package:newsup_app/presentation/pages/home/widgets/news_headline_time_and_comment.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../../utils/constants/app_paddings.dart';

class HomeNewsItemView extends StatelessWidget {
  const HomeNewsItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.r24,
      child: ListView.separated(
        cacheExtent: 22,
        scrollDirection: Axis.vertical,
        itemCount: newsheadline.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemBuilder: (context, index) {
          final headline = newsheadline[index];
          return Row(
            children: [
              NewsHeadlineImage(image: headline.image),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsHeadlineCotegoryAndDots(text: headline.categoryText),
                  4.verticalSpace,
                  NewsHeadlineText(text: headline.headlineText),
                  12.verticalSpace,
                  Row(
                    children: [
                      NewsHeadlineChannelSource(
                        icon: headline.sourceIcon,
                        text: headline.sourceText,
                      ),
                      // 29.horizontalSpace,
                      NewsHeadlineTimeAndComment(
                        commentCountText: headline.comentText,
                        clockText: headline.timeText,
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
