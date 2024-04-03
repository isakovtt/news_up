import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/widgets/custom_circle_avatar.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class TopicProfileImage extends StatelessWidget {

  const TopicProfileImage({ super.key });

   @override
   Widget build(BuildContext context) {
       return GestureDetector(
      onTap: () {},
      child: const CustomCircleAvatar(
        image: AppAssets.topicImage_4,
        backgroundColor: AppColors.greyScale_100,
      ),
    );
  }
}