import 'package:flutter/material.dart';
import 'selected_item_title.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_texts.dart';

class PreviewChipTagsTitle extends StatelessWidget {
  const PreviewChipTagsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectedItemTitle(
      text: AppTexts.addTags,
      icon: AppAssets.tag_01,
    );
  }
}
