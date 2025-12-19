import 'package:newsup_app/utils/constants/app_assets.dart';

class ListRecentModel {
  String image;
  String categoryTitle;
  String description;

  ListRecentModel({
    required this.image,
    required this.categoryTitle,
    required this.description,
  });
}

List<ListRecentModel> listRecent = [
  ListRecentModel(
    image: AppAssets.savedListImage_1,
    categoryTitle: 'Design',
    description:
        'Curated Collection of Modern and Functional Design Ideas.',
  ),
  ListRecentModel(
    image: AppAssets.savedListImage_2,
    categoryTitle: 'Productivity',
    description:
        'Productivity is a measure of performance that compares the output of a product with the input, or resources, required to produce it.',
  ),
   ListRecentModel(
    image: AppAssets.cryptoImagePng,
    categoryTitle: 'Crypto',
    description:
        'Leader in cryptocurrency, Bitcoin, Ethereum, XRP, blockchain, DeFi, digital finance and Web 3.0.',
  ),
   ListRecentModel(
    image: AppAssets.artImage,
    categoryTitle: 'Art',
    description:
        'Bringing creativity to life through art that inspires and evokes emotion.',
  ),
   
];
