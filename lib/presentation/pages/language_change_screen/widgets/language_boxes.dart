import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_texts.dart';
import 'language_box.dart';

class LanguageBoxes extends StatelessWidget {

  const LanguageBoxes({ super.key });

   @override
   Widget build(BuildContext context) {
       return Column(children: [
        24.verticalSpace,
              const LanguageBox(
                text: AppTexts.english,
              ),
              24.verticalSpace,
              const LanguageBox(
                text: AppTexts.azerbaijan,
              ),
              24.verticalSpace,
              const LanguageBox(
                text: AppTexts.russian,
              ),
       ],);
  }
}