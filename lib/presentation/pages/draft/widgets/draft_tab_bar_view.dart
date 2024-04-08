import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'draft_layouts.dart';
import 'draft_list_view.dart';
import 'publish_view.dart';

class DraftTabBarView extends StatelessWidget {
  const DraftTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: [
                const DraftLayouts(draftText: true),
                24.verticalSpace,
                const DraftListView(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const DraftLayouts(publishText: true),
                24.verticalSpace,
                const PublishView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
