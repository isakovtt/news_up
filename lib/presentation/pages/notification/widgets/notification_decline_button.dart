import 'package:flutter/material.dart';
import '../../../widgets/global_black_button.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class NotificationDeclineButton extends StatelessWidget {
  const NotificationDeclineButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: GlobalBlackButton(
        text: AppTexts.decline,
        border: Border.all(),
        style: AppTextStyles.secondBaseS12W400,
        color: AppColors.white,
      ),
    );
  }
}
