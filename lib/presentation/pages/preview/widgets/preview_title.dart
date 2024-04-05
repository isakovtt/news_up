import 'package:flutter/material.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class PreviewTitle extends StatelessWidget {
  const PreviewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h20,
      child: Text(
        '9 Things to Consider Before Buying Your First NFT',
        style: AppTextStyles.greyScale900s18W700,
        textAlign: TextAlign.center,
      ),
    );
  }
}
