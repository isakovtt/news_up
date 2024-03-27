import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../detail/detail_news_screen.dart';
import 'horizontal_dots.dart';
import '../../../../utils/helpers/navigate.dart';
import 'news_headline_cotegory.dart';
import 'news_headline_image.dart';
import 'news_headline_text.dart';
import 'news_headline_time_and_comment.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../../utils/constants/app_paddings.dart';

class HomeNewsItemView extends StatelessWidget {
  const HomeNewsItemView({super.key});

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
          return Row(
            children: [
              NewsHeadlineImage(image: headline.image),
              16.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      NewsHeadlineCotegory(text: headline.categoryText),
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
                    child: NewsHeadlineText(text: headline.headlineText),
                  ),
                  12.verticalSpace,
                  NewsHeadlineTimeAndComment(
                    icon: headline.sourceIcon,
                    text: headline.sourceText,
                    clockText: headline.timeText,
                    commentCountText: headline.commentText,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
