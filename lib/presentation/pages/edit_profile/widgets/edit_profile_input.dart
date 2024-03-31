import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/global_input.dart';

import '../../../../utils/constants/app_text_styles.dart';

class EditProfileInput extends StatelessWidget {
  const EditProfileInput({super.key, required this.text,  this.prefixText});

  final String text;
  final String? prefixText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: AppTextStyles.greyScale400s14W700,
            )
          ],
        ),
        12.verticalSpace,
         GlobalInput(
          prefixText: prefixText,
        ),
      ],
    );
  }
}
