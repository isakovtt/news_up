import 'package:flutter/material.dart';
import 'package:newsup_app/presentation/pages/preview/widgets/selected_item_title.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';
import 'package:newsup_app/utils/constants/app_texts.dart';

class PreviewChannelsDropdownMenuTitle extends StatelessWidget {
  const PreviewChannelsDropdownMenuTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SelectedItemTitle(
      text: AppTexts.channels,
      icon: AppAssets.shareTwo,
      height: 26,
    );
  }
}
