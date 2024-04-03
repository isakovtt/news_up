import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/author_account_info.dart';
import 'widgets/author_buttons.dart';
import 'widgets/author_stories_list_view.dart';
import 'widgets/author_view_more.dart';

import '../../widgets/global_view.dart';
import 'widgets/author_all_header_statistics.dart';
import 'widgets/author_app_bar.dart';

class DetailAuthorScreen extends StatelessWidget {
  const DetailAuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthorAppBar(),
      body: GlobalView(
        children: [
          8.verticalSpace,
          const AuthorAllHeaderStatistics(),
          23.verticalSpace,
          const AuthorAccountInfo(),
          24.verticalSpace,
          const AuthorButtons(),
          24.verticalSpace,
          const AuthorViewMore(),
          16.verticalSpace,
          const AuthorStoriesListView()
        ],
      ),
    );
  }
}
