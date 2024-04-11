import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_view_more.dart';
import 'top_author_header_text.dart';
import 'top_author_list_view.dart';

class AuthorListView extends StatelessWidget {
  const AuthorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        4.verticalSpace,
        const TopAuthorHeaderText(),
        16.verticalSpace,
        const TopAuthorListView(),
        24.verticalSpace,
        const GlobalViewMore(text: AppTexts.recomendation),
        16.verticalSpace,
        // const RecomendedAuthorListView(),
      ],
    );
  }
}
