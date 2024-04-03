import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class HorizontalDots extends StatelessWidget {
  const HorizontalDots({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        AppAssets.dotsGrey,
      ),
    );
  }
}
