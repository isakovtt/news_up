import 'package:newsup_app/utils/constants/app_assets.dart';

class DropdownMenuList {
  DropdownMenuList._();

  static List<String> categoriesItems = [
    'NFT',
    'Technology',
    'Crypto',
    'Sport',
    'Health',
    'Business',
    'Design',
  ];
  static String? selectedCategoriesValue;

  static List<String> channelsItems = [
    'NBC News',
    'BBC News',
    'CNN News',
    'Euro News',
    'FOX News',
    'Kontan News',
    'ABC News',
    'Breitbart',
  ];
  static String? selectedChannelsValue;

  static List<Map<String, dynamic>> sourceIcon = [
    {'name': 'NBC News', 'icon': AppAssets.cnnVector},
    {'name': 'BBC News', 'icon': AppAssets.nbcVector},
    {'name': 'CNN News', 'icon': AppAssets.cnnVector},
    {'name': 'Euro News', 'icon': AppAssets.nbcVector},
    {'name': 'FOX News', 'icon': AppAssets.cnnVector},
    {'name': 'Kontan News', 'icon': AppAssets.nbcVector},
    {'name': 'ABC News', 'icon': AppAssets.cnnVector},
    {'name': 'Breitbart', 'icon': AppAssets.cnnVector},
  ];
}
