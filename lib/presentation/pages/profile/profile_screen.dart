import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/global_view.dart';
import 'widgets/profile_account_info.dart';
import 'widgets/profile_all_header_statistics.dart';
import 'widgets/profile_app_bar.dart';
import 'widgets/profile_buttons.dart';
import 'widgets/profile_stories_list_view.dart';
import 'widgets/profile_view_more.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(),
      body: GlobalView(
        children: [
          8.verticalSpace,
          const ProfileAllHeaderStatistics(),
          23.verticalSpace,
          const ProfileAccountInfo(),
          24.verticalSpace,
          const ProfileButtons(),
          24.verticalSpace,
          const ProfileViewMore(),
          // 16.verticalSpace,
          const ProfileStoriesListView(),
        ],
      ),
      // bottomNavigationBar:  CustomNavigationBar(),
    );
  }
}
