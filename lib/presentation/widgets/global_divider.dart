import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalDivider extends StatelessWidget {
  const GlobalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      color: AppColors.greyScale_300,
      thickness: 1,
    );
  }
}
