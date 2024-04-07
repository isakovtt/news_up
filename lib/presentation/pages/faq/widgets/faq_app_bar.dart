import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';

class FaqAppBar extends StatelessWidget implements PreferredSizeWidget{
  const FaqAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppTexts.faq,
        style: AppTextStyles.whiteS16W700,
      ),
      backgroundColor: AppColors.primary_500,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
