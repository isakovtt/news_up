import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/recomendation_author_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'author_tile.dart';

class RecomendedAuthorListView extends StatelessWidget {
  const RecomendedAuthorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.h24,
      itemCount: recomendedAuthor.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 12.verticalSpace,
      itemBuilder: (context, index) {
        final recomendAuthor = recomendedAuthor[index];
        return AuthorTile(
          profileIcon: recomendAuthor.profileIcon,
          name: recomendAuthor.name,
          username: recomendAuthor.username,
        );
      },
    );
  }
}
