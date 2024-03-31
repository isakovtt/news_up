import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/top_author_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'author_tile.dart';

class TopAuthorListView extends StatelessWidget {
  const TopAuthorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.h24,
      itemCount: topAuthors.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 12.verticalSpace,
      itemBuilder: (context, index) {
        final author = topAuthors[index];
        return AuthorTile(
          hasVerifiedIcon: true,
          profileIcon: author.profileIcon,
          name: author.name,
          username: author.username,
        );
      },
    );
  }
}
