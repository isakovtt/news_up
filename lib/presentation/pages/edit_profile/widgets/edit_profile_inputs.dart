import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_input.dart';
import 'edit_profile_input.dart';

class EditProfileInputs extends StatelessWidget {
  const EditProfileInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const EditProfileInput(text: AppTexts.fullName),
        16.verticalSpace,
        const EditProfileInput(text: AppTexts.email),
        16.verticalSpace,
        Row(
          children: [
            Text(
              AppTexts.password,
              style: AppTextStyles.greyScale400s14W700,
            ),
            const Spacer(),
            Text(AppTexts.change, style: AppTextStyles.primaryBaseS14W500)
          ],
        ),
        12.verticalSpace,
        const GlobalInput(
          suffixIcon: Icon(Icons.remove_red_eye_outlined),
          obscureText: true,
        ),
        16.verticalSpace,
        const EditProfileInput(
          text: AppTexts.phoneNumber,
          prefixText: '+994',
        ),
        12.verticalSpace,
        const EditProfileInput(text: 'About')
      ],
    );
  }
}
