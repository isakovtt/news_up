import 'package:newsup_app/utils/constants/app_texts.dart';

import '../../utils/constants/app_assets.dart';

class BottomNavigationBarModel {
  final String text;
  final String iconSvg;

  BottomNavigationBarModel({
    required this.text,
    required this.iconSvg,
  });
}

List<BottomNavigationBarModel> bottomNavItems = [
  BottomNavigationBarModel(
    text: AppTexts.home,
    iconSvg: AppAssets.home_2,
  ),
  BottomNavigationBarModel(
    text: AppTexts.explore,
    iconSvg: AppAssets.search,
  ),
  BottomNavigationBarModel(
    text: AppTexts.list,
    iconSvg: AppAssets.frame,
  ),
  BottomNavigationBarModel(
    text: AppTexts.profile,
    iconSvg: AppAssets.profileCircle,
  ),
];
