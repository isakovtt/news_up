import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/constants/app_assets.dart';

class GlobalAppLogo extends StatelessWidget {
  const GlobalAppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AppAssets.component_2,
      ),
    );
  }
}
