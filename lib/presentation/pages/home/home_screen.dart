import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cubits/home/home_cubit.dart';
import '../../../utils/constants/app_texts.dart';
import '../../widgets/global_live_news.dart';
import '../../widgets/global_view_more.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_channels.dart';
import 'widgets/home_cotegory_list_view.dart';
import 'widgets/home_news_item_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
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
            StreamBuilder(
              initialData: cubit.selectedCategorySubject.value,
              stream: cubit.selectedCategorySubject.stream,
              builder: (context, snapshot) {
                final selectedCategory = snapshot.data!;
                return Column(
                  children: [
                    HomeCotegoryListView(selectedCategory: selectedCategory),
                    24.verticalSpace,
                    HomeNewsItemListView(selectedCategory: selectedCategory),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
