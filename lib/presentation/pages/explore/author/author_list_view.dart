import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/top_author_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import 'author_tile.dart';

class AuthorListView extends StatelessWidget {
  const AuthorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          4.verticalSpace,
          Text(
            AppTexts.topAuthor,
            style: AppTextStyles.greyScale900s16W700,
          ),
          16.verticalSpace,
          ListView.separated(
            itemCount: topAuthors.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 12.verticalSpace,
            itemBuilder: (context, index) {
              final author = topAuthors[index];
              return AuthorTile(
                profileIcon: author.profileIcon,
                name: author.name,
                username: author.username,
              );
            },
          ),
          24.verticalSpace,
          Text(
            AppTexts.topAuthor,
            style: AppTextStyles.greyScale900s16W700,
          ),
        ],
      ),
    );
  }
}
