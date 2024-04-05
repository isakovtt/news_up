import 'package:flutter/material.dart';
import 'selected_item_title.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_texts.dart';

class PreviewDropdownMenuTitle extends StatelessWidget {
  const PreviewDropdownMenuTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectedItemTitle(
      text: AppTexts.categories,
      icon: AppAssets.flashVector,
      height: 26,
    );
  }
}
