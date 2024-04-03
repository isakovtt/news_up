import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/inside_colored_button.dart';

class TopicButton extends StatelessWidget {
  const TopicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: InsideColoredButton(
        height: 48,
        color: AppColors.greyScale_900,
        width: double.infinity,
        text: AppTexts.follow,
        onTap: () {},
      ),
    );
  }
}
