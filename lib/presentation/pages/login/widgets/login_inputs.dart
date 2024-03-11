import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_input.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const GlobalInput(
          text: AppTexts.yourName,
        ),
        14.verticalSpace,
        const GlobalInput(
          text: AppTexts.password,
          suffixIcon: Icon(
            Icons.remove_red_eye_outlined,
            color: AppColors.greyScale_500,
            size: 20,
          ),
        ),
      ],
    );
  }
}
