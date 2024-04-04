import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/notification_app_bar.dart';
import 'widgets/notification_followed_list_tile.dart';
import 'widgets/notification_liked_list_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NotificationAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            24.verticalSpace,
            const NotificationFollowedListTile(),
            24.verticalSpace,
            const NotificationLikedListTile(),
          ],
        ),
      ),
    );
  }
}
