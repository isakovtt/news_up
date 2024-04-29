import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalProgressIndicator extends StatelessWidget {
  const GlobalProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        backgroundColor: AppColors.white,
        radius: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
