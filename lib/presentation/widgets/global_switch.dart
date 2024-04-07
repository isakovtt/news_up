import 'package:flutter/material.dart';

import '../../utils/constants/app_colors.dart';

class GlobalSwitch extends StatelessWidget {
  const GlobalSwitch({super.key, this.isSwitched = false});
  final bool isSwitched;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {},
      activeColor: AppColors.successLight,
      inactiveThumbColor: AppColors.white,
      inactiveTrackColor: AppColors.greyScale_200,
    );
  }
}
