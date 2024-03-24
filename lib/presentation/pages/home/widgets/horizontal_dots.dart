import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

class HorizontalDots extends StatelessWidget {
  const HorizontalDots({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.dotsGrey,
    );
  }
}
