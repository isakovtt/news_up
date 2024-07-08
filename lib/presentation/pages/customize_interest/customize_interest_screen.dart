import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/draft/widgets/draft_tab_bar_view.dart';
import 'package:newsup_app/presentation/pages/edit_profile/widgets/global_app_bar.dart';
import 'package:newsup_app/presentation/pages/faq/widgets/faq_app_bar.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

import '../draft/widgets/draft_segmented_bar.dart';

class CustomizeInterestScreen extends StatelessWidget {
  const CustomizeInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const GlobalAppBar(text: AppTexts.customizeInterest),
        body: ListView(
          children:  [
           DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              const DraftSegmentedBar(),
              24.verticalSpace,
              const DraftTabBarView(),
            ],
          ),
        ),
          ],
        ));
  }
}
