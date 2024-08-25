import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_assets.dart';
import '../../widgets/global_view.dart';
import 'widgets/author_account_info.dart';
import 'widgets/author_all_header_statistics.dart';
import 'widgets/author_app_bar.dart';
import 'widgets/author_buttons.dart';
import 'widgets/author_stories_list_view.dart';
import 'widgets/author_view_more.dart';

class DetailAuthorScreen extends StatelessWidget {
  const DetailAuthorScreen({super.key, required this.author});

  final Map<String, dynamic> author;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AuthorAppBar(),
      body: GlobalView(
        children: [
          8.verticalSpace,
          AuthorAllHeaderStatistics(
            image: author['profilePicture'] ?? AppAssets.netwokProfileAvatar,
          ),
          23.verticalSpace,
          AuthorAccountInfo(
            name: author['name'],
            username:
                '@${author['name'].toString().replaceAll(' ', '_').toLowerCase()}',
            about: author['about'] ?? 'About is empty',
          ),
          24.verticalSpace,
          const AuthorButtons(),
          24.verticalSpace,
          const AuthorViewMore(),
          16.verticalSpace,
          AuthorStoriesListView(
            author: author,
          )
        ],
      ),
    );
  }
}
