import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_texts.dart';
import '../../widgets/global_live_news.dart';
import '../../widgets/global_view_more.dart';
import 'widgets/home_channels.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_cotegory_list_view.dart';
import 'widgets/news_item_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            4.verticalSpace,
            const HomeChannels(),
            24.verticalSpace,
            const GlobalViewMore(text: AppTexts.breakingNews),
            24.verticalSpace,
            const GlobalLiveNews(),
            32.verticalSpace,
            const HomeCotegoryListView(),
            24.verticalSpace,
            const NewsItemListView(),
          ],
        ),
      ),
    );
  }
}
