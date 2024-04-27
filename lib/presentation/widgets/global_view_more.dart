import 'package:flutter/material.dart';

import '../../utils/constants/app_paddings.dart';
import '../../utils/constants/app_text_styles.dart';
import '../../utils/constants/app_texts.dart';

class GlobalViewMore extends StatelessWidget {
  const GlobalViewMore({super.key, required this.text, this.padding});

  final String text;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppPaddings.h24,
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.greyScale900s16W700,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              AppTexts.viewMore,
              style: AppTextStyles.primaryBaseS14W500,
            ),
          ),
        ],
      ),
    );
  }
}
