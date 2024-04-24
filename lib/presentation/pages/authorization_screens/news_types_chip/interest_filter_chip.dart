import 'package:chip_list/chip_list.dart';
import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_text_styles.dart';

class InterestFilterChip extends StatefulWidget {
  const InterestFilterChip({super.key});

  @override
  State<InterestFilterChip> createState() => _InterestFilterChipState();
}

final List<String> _dogeNames = [
  'Finance',
  'Gaming',
  'Sport',
  'Crypto',
  'Health',
  'Technology',
  'Design',
  'Travel',
  'Business',
];

int _currentIndex = 0;

class _InterestFilterChipState extends State<InterestFilterChip> {
  @override
  Widget build(BuildContext context) {
    return ChipList(
      runSpacing: 16,
      spacing: 12,
      style: AppTextStyles.greyScale900s16W500,
      mainAxisAlignment: MainAxisAlignment.center,
      showCheckmark: false,
      runAlignment: WrapAlignment.center,
      wrapAlignment: WrapAlignment.center,
      activeBorderColorList: const [AppColors.primaryBase],
      listOfChipNames: _dogeNames,
      supportsMultiSelect: true,
      shouldWrap: true,
      activeBgColorList: const [AppColors.primary_100],
      inactiveBgColorList: const [AppColors.greyScale_50],
      activeTextColorList: const [AppColors.primaryBase],
      inactiveTextColorList: [Theme.of(context).primaryColor],
      listOfChipIndicesCurrentlySeclected: [0, 4, 6],
    );
  }
}
