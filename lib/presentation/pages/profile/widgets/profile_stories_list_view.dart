import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/profile_stories_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/stories_list_tile.dart';

class ProfileStoriesListView extends StatelessWidget {
  const ProfileStoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.h24,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: profileStories.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemBuilder: (context, index) {
        final stories = profileStories[index];
        return StoriesListTile(
          image: stories.image,
          cotegoryName: stories.categoryText,
          sourceIcon: stories.sourceIcon,
          sourceName: stories.sourceName,
          commentText: stories.commentText,
          headlineText: stories.headlineText,
          timeText: stories.timeText,
        );
      },
    );
  }
}
