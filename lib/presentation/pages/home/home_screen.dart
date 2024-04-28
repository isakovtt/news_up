import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

import '../../widgets/global_view_more.dart';
import '../../widgets/global_live_news.dart';
import 'widgets/channels.dart';
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
            StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('channels')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SizedBox.shrink();
                  }
                  final channels = snapshot.data!.docs;
                  return Channels(
                    channels: channels,
                  );
                }),
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
