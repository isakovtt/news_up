import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_box_decorations.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_texts.dart';
import '../../widgets/custom_tab_box.dart';
import 'widgets/draft_app_bar.dart';
import 'widgets/draft_layouts.dart';
import 'widgets/draft_view.dart';
import 'widgets/publish_view.dart';

class DraftScreen extends StatefulWidget {
  const DraftScreen({super.key});

  @override
  State<DraftScreen> createState() => _DraftScreenState();
}

class _DraftScreenState extends State<DraftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DraftAppBar(),
      body: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                DecoratedBox(
                  decoration: AppBoxDecorations.greyScale100R12,
                  child: Padding(
                    padding: AppPaddings.all3,
                    child: ButtonsTabBar(
                      height: 40.h,
                      contentPadding: AppPaddings.h5,
                      backgroundColor: AppColors.white,
                      unselectedBackgroundColor: AppColors.greyScale_100,
                      tabs: const [
                        Tab(
                          child: CustomTabBox(
                            text: AppTexts.draft,
                          ),
                        ),
                        Tab(
                            child: CustomTabBox(
                          text: AppTexts.publish,
                        )),
                      ],
                    ),
                  ),
                ),
                24.verticalSpace,
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            const DraftLayouts(draftText: true),
                            24.verticalSpace,
                            const DraftView(),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
