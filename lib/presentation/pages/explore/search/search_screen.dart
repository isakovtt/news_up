import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import 'search_result_view.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          AppTexts.explore,
          style: AppTextStyles.greyScale900s16W700,
        ),
        actions: [
          Padding(
            padding: AppPaddings.h24,
            child: GestureDetector(
              onTap: () {
                showSearch(
                  context: context,
                  delegate: CustomSearch(),
                );
              },
              child: SvgPicture.asset(
                AppAssets.search,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
