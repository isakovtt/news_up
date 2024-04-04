import 'package:flutter/material.dart';

import '../../utils/constants/app_text_styles.dart';
import 'global_colorless_circle.dart';

class GlobalSheetItem extends StatelessWidget {
  const GlobalSheetItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppTextStyles.greyScale900s16W500,
        ),
        const Spacer(),
        const GlobalColorlessCircle()
      ],
    );
  }
}
