import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/peview_chip_list.dart';
import '../../../../utils/constants/app_colors.dart';

class PreviewCips extends StatelessWidget {
  const PreviewCips({super.key});

  @override
  Widget build(BuildContext context) {
    return ChipList(
      listOfChipNames: PeviewChipList.tagNames,
      spacing: 12,
      activeBgColorList: [Theme.of(context).primaryColor],
      inactiveBgColorList: const [AppColors.primary_100],
      inactiveTextColorList: [Theme.of(context).primaryColor],
      listOfChipIndicesCurrentlySeclected: [0],
      wrapAlignment: WrapAlignment.start,
      wrapCrossAlignment: WrapCrossAlignment.start,
      shouldWrap: true,
      showCheckmark: false,
      scrollPhysics: const NeverScrollableScrollPhysics(),
    );
  }
}
