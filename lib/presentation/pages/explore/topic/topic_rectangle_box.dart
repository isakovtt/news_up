import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

class GlobalRoundedBox extends StatelessWidget {
  const GlobalRoundedBox({super.key, this.child});

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.greyScale_200,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: child,
      ),
    );
  }
}
