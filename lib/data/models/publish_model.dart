import 'package:newsup_app/utils/constants/app_assets.dart';

class PublishModel {
  PublishModel({
    required this.image,
    required this.editTime,
    required this.headline,
    required this.seenCount,
  });

  String image;
  String editTime;
  String headline;
  String seenCount;
}

List<PublishModel> publishes = [
  PublishModel(
      image: AppAssets.draftImage_1,
      editTime: '19 Oct 22',
      headline: '9 Things to Consider Before Buying Your First NFT',
      seenCount: '112K'),
  PublishModel(
      image: AppAssets.draftImage_2,
      editTime: '17 Agust 22',
      headline: 'What your bathroom habits say about your health',
      seenCount: '15K'),
  PublishModel(
      image: AppAssets.draftImage_5,
      editTime: '1 April 22',
      headline: 'Money Is One of the Most Important Things in Life',
      seenCount: '3K'),
  PublishModel(
      image: AppAssets.draftImage_6,
      editTime: '8 June 22',
      headline: 'Why Product Thinking is the next big thing in UX Design',
      seenCount: '219K'),
];
