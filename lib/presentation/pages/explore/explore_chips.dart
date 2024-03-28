import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';

import '../../../data/models/chip_list.dart';
import '../../../utils/constants/app_colors.dart';

class ExploreChips extends StatelessWidget {
  const ExploreChips({super.key});

  @override
  Widget build(BuildContext context) {
    return ChipList(
      listOfChipNames: ChipListModel.dogeNames,
      spacing: 5,
      activeBgColorList: [Theme.of(context).primaryColor],
      inactiveBgColorList: const [AppColors.greyScale_100],
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
