import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class PreviewTitle extends StatelessWidget {
  const PreviewTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h20,
      child: Text(
        text,
        style: AppTextStyles.greyScale900s18W700,
        textAlign: TextAlign.center,
      ),
    );
  }
}
