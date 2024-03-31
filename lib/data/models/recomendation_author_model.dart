import 'package:newsup_app/utils/constants/app_assets.dart';

class RecomendationAuthorModel {
  String profileIcon;
  String name;
  String username;

  RecomendationAuthorModel({
    required this.profileIcon,
    required this.name,
    required this.username,
  });
}

List<RecomendationAuthorModel> recomendedAuthor = [
  RecomendationAuthorModel(
    profileIcon: AppAssets.recomendedAuthorImage_1,
    name: 'Jhon Digta',
    username: '@digjhon34ta',
  ),
  RecomendationAuthorModel(
    profileIcon: AppAssets.recomendedAuthorImage_2,
    name: 'Alex Chires',
    username: '@reschia_12aaa',
  ),
];
