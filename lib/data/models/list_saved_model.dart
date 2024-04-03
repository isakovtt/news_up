import 'package:newsup_app/utils/constants/app_assets.dart';

class ListSavedModel {
  String image;
  String categoryTitle;
  String description;

  ListSavedModel({
    required this.image,
    required this.categoryTitle,
    required this.description,
  });
}

List<ListSavedModel> listSaved = [
  ListSavedModel(
    image: AppAssets.savedListImage_1,
    categoryTitle: 'Design',
    description:
        'Purus viverra aliquet facilisi purus. Ac vitae accumsan, vulputate et in faucibus orci consectetur.',
  ),
  ListSavedModel(
    image: AppAssets.savedListImage_2,
    categoryTitle: 'Productivity',
    description:
        'Purus viverra aliquet facilisi purus. Ac vitae accumsan, vulputate et in faucibus orci consectetur.',
  ),
];
