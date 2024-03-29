import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/topics_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import 'topic_tile.dart';

class TopicListView extends StatelessWidget {
  const TopicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l20r28,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.allTopic,
            style: AppTextStyles.greyScale900s16W700,
          ),
          4.verticalSpace,
          ListView.separated(
            itemCount: topics.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 12.verticalSpace,
            itemBuilder: (context, index) {
              final topic = topics[index];
              return TopicTile(
                topicImage: topic.topicImage,
                topicNameText: topic.topicName,
                followersCount: topic.followersCount,
              );
            },
          ),
        ],
      ),
    );
  }
}
