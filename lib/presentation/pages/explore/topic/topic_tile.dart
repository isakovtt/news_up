import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_black_button.dart';
import 'topic_rectangle_box.dart';

class TopicTile extends StatefulWidget {
  const TopicTile(
      {super.key,
      required this.topicNameText,
      required this.followersCount,
      required this.topicImage});

  final String topicNameText;
  final String followersCount;
  final String topicImage;

  @override
  State<TopicTile> createState() => _TopicTileState();
}

class _TopicTileState extends State<TopicTile> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: AppPaddings.all0,
      minVerticalPadding: 0,
      horizontalTitleGap: 16.w,
      leading: GlobalRoundedBox(
        child: Image.asset(
          widget.topicImage,
        ),
      ),
      title: Text(
        widget.topicNameText,
        style: AppTextStyles.greyScale900s14W700,
      ),
      subtitle: Text(
        widget.followersCount,
        style: AppTextStyles.greyScale400s12W400,
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            isFollowing = !isFollowing;
          });
        },
        child: isFollowing
            ? GlobalBlackButton(
                width: 80.h,
                text: 'Following',
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.secondaryBase,
                ),
                style: AppTextStyles.secondBaseS12W400,
              )
            : const GlobalBlackButton(
                text: AppTexts.follow,
              ),
      ),
    );
  }
}
