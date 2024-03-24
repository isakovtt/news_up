import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/widgets/auth_headers.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../../utils/constants/app_texts.dart';

class NewsTypesChip extends StatelessWidget {
  const NewsTypesChip({super.key});

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
            const AuthHeaders(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              title: AppTexts.whatsInterestYou,
              subtitle: AppTexts.whatsInterestSubtitle,
            ),
            40.verticalSpace,
            FilterChip(
              label: const Text('data'),
              onSelected: (value) {},
              backgroundColor: AppColors.primaryBase,
              
            )
          ],
        ),
      ),
    );
  }
}
