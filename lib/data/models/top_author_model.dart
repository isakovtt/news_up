import 'package:newsup_app/utils/constants/app_assets.dart';

class TopAuthorModel {
  String profileIcon;
  String name;
  String username;

  TopAuthorModel({
    required this.profileIcon,
    required this.name,
    required this.username,
  });
}

List<TopAuthorModel> topAuthors = [
  TopAuthorModel(
    profileIcon: AppAssets.authorImage_1,
    name: 'Rayna Carder',
    username: '@rayna_carder',
  ),
  TopAuthorModel(
    profileIcon: AppAssets.authorImage_2,
    name: 'Leonardo de Vinci ',
    username: '@leode_vi123',
  ),
  TopAuthorModel(
    profileIcon: AppAssets.authorImage_3,
    name: 'Angelina Shodaq',
    username: '@shodaqangela',
  ),
];
