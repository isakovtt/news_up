import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_texts.dart';
import '../edit_profile/widgets/global_app_bar.dart';

class CustomizeInterestScreen extends StatelessWidget {
  const CustomizeInterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GlobalAppBar(text: AppTexts.customizeInterest),
      // body: ListView(
      //   children:  [
      //    DefaultTabController(
      //   length: 2,
      //   child: Column(
      //     children: <Widget>[
      //       const DraftSegmentedBar(),
      //       24.verticalSpace,
      //       const DraftTabBarView(),
      //     ],
      //   ),
      // ),
      //   ],
      // ));
      body: Center(
        child: Text(
          'No element :(',
          style: TextStyle(
            color: AppColors.greyScale_500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
