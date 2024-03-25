import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/app_box_decorations.dart';
import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_text_styles.dart';
import 'draft_app_bar.dart';
import 'draft_layouts.dart';
import 'draft_view.dart';

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
        preferredSize: const Size.fromHeight(40),
        child: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                DecoratedBox(
                  decoration: AppBoxDecorations.greyScale100R12,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ButtonsTabBar(
                      height: 40,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
                      backgroundColor: AppColors.white,
                      unselectedBackgroundColor: AppColors.greyScale_100,
                      tabs: [
                        Tab(
                          child: Container(
                            height: 32.h,
                            width: 155,
                            decoration: AppBoxDecorations.circular12,
                            child: Center(
                              child: Text('Draft',
                                  style: AppTextStyles.greyScale900s14W700),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            decoration: AppBoxDecorations.circular12,
                            height: 32.h,
                            width: 155,
                            child: Center(
                              child: Text(
                                'Publish',
                                style: AppTextStyles.greyScale900s14W700,
                              ),
                            ),
                          ),
                        ),
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
                            const DraftLayouts(),
                            24.verticalSpace,
                            const DraftView()
                          ],
                        ),
                      ),
                      const Center(
                        child: Icon(Icons.directions_transit),
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
