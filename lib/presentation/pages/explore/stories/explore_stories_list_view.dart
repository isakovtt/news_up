import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

import '../../../../data/models/news_headline_model.dart';
import '../../../widgets/custom_basic_list_tile.dart';

class ExploreStoriesListView extends StatelessWidget {
  const ExploreStoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 22, right: 26),
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
          titleStyle: AppTextStyles.greyScale400s14W700,
          style: AppTextStyles.greyScale400s12W400,
          hasSource: true,
          hasDot: true,
          onTap: () {},
        );
      },
    );
  }
}
