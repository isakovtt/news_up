import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_texts.dart';
import 'faq_type.dart';

class FaqTypes extends StatelessWidget {
  const FaqTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FaqType(
          text: AppTexts.usingNewsup,
          title: AppTexts.usingNewsupTitle,
          subTitle: AppTexts.usingNewsupSubTitle,
        ),
        16.verticalSpace,
        const FaqType(
          text: AppTexts.becomeAMember,
          title: AppTexts.becomeAMemberTitle,
          subTitle: AppTexts.becomeAMemberSubTitle,
        ),
      ],
    );
  }
}
