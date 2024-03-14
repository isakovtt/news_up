import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_paddings.dart';
import '../../widgets/global_navigation_bar.dart';
import 'widgets/channels.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_cotegory_view.dart';
import 'widgets/home_live_view.dart';
import 'widgets/home_news_items.dart';
import 'widgets/home_view_more.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: AppPaddings.l24,
        child: SingleChildScrollView(
          child: Column(
            children: [
              4.verticalSpace,
              const Channels(),
              24.verticalSpace,
              const HomeViewMore(),
              24.verticalSpace,
              const HomeLiveView(),
              32.verticalSpace,
              const HomeCotegoryView(),
              24.verticalSpace,
              const HomeNewsItemView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const GlobalNavigationBar()
    );
  }
}
