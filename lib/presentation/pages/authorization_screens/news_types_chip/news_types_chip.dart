import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/news_types_chip/interest_filter_chip.dart';
import 'package:newsup_app/presentation/pages/bottom_navigation/navigation_screen.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/inside_colored_button.dart';
import '../widgets/auth_headers.dart';

class NewsTypesChip extends StatefulWidget {
  const NewsTypesChip({super.key});

  @override
  State<NewsTypesChip> createState() => _NewsTypesChipState();
}

class _NewsTypesChipState extends State<NewsTypesChip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: ListView(
          children: [
            Column(
              children: [
                const AuthHeaders(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  title: AppTexts.whatsInterestYou,
                  subtitle: AppTexts.whatsInterestSubtitle,
                ),
                40.verticalSpace,
                const InterestFilterChip(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: AppPaddings.h24,
        child: InsideColoredButton(
          onTap: () => Navigate.navigateReplacePush(
            context,
            const NavigationScreen(),
          ),
          text: AppTexts.buildMyFeed,
          width: double.infinity,
        ),
      ),
    );
  }
}
