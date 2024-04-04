import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalColorlessCircle extends StatelessWidget {
  const GlobalColorlessCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.white,
        border: Border.all(
          width: 2,
          color: AppColors.greyScale_200,
        ),
      ),
      child: const CircleAvatar(
        radius: 10,
        backgroundColor: AppColors.white,
      ),
    );
  }
}
