import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/home/widgets/home_news_item_list_view.dart';

import 'widgets/view_more_app_bar.dart';

class ViewMoreScreen extends StatelessWidget {
  const ViewMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ViewMoreAppBar(),
      body: Column(
        children: [
          24.verticalSpace,
          const HomeNewsItemListView(selectedCategory: 'Trending'),
        ],
      ),
    );
  }
}
