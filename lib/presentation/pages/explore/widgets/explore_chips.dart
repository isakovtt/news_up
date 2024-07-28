import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';

import '../../../../data/models/explore_chip_list.dart';
import '../../../../utils/constants/app_colors.dart';

class ExploreChips extends StatelessWidget {
  const ExploreChips({super.key});

  @override
  Widget build(BuildContext context) {
    return ChipList(
      
      listOfChipNames: ExploreChipListModel.dogeNames,
      spacing: 10,
      runSpacing: 2,
      activeBgColorList: [Theme.of(context).primaryColor],
      inactiveBgColorList: const [AppColors.greyScale_100],
      inactiveTextColorList: [Theme.of(context).primaryColor],
      inactiveBorderColorList: const [AppColors.greyScale_200],
      wrapAlignment: WrapAlignment.start,
      wrapCrossAlignment: WrapCrossAlignment.start,
      shouldWrap: true,
      showCheckmark: false,
      supportsMultiSelect: true,
      scrollPhysics: const NeverScrollableScrollPhysics(),
      listOfChipIndicesCurrentlySeclected: [0, 2, 5],
    );
  }
}
