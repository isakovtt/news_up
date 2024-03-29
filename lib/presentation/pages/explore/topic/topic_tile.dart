import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_black_button.dart';
import 'topic_rectangle_box.dart';

class TopicTile extends StatelessWidget {
  const TopicTile(
      {super.key,
      required this.topicNameText,
      required this.followersCount,
      required this.topicImage});

  final String topicNameText;
  final String followersCount;
  final String topicImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: AppPaddings.all0,
      minVerticalPadding: 0,
      horizontalTitleGap: 16.w,
      leading: GlobalRoundedBox(
        child: Image.asset(
          topicImage,
        ),
      ),
      title: Text(
        topicNameText,
        style: AppTextStyles.greyScale900s14W700,
      ),
      subtitle: Text(
        followersCount,
        style: AppTextStyles.greyScale400s12W400,
      ),
      trailing: const GlobalBlackButton(
        text: AppTexts.follow,
      ),
    );
  }
}
