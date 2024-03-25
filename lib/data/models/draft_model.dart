import 'package:newsup_app/utils/constants/app_assets.dart';

class DraftModel {
  String image;
  String editTime;
  String headline;

  DraftModel({
    required this.editTime,
    required this.headline,
    required this.image,
  });
}

List<DraftModel> drafts = [
  DraftModel(
    image: AppAssets.draftImage_1,
    editTime: 'Edited 1m ago',
    headline: '9 Things to Consider Before Buying Your First NFT',
  ),
  DraftModel(
    image: AppAssets.draftImage_2,
    editTime: 'Edited 8h ago',
    headline: 'What your bathroom habits say about your health',
  ),
  DraftModel(
    image: AppAssets.draftImage_3,
    editTime: 'Edited yesterday',
    headline: 'Think therapy is navel-gazing? Think again',
  ),
  DraftModel(
    image: AppAssets.draftImage_4,
    editTime: 'Edited 1w ago',
    headline: '9 Takeaways From 8 Years In The Software Industry',
  ),
  DraftModel(
    image: AppAssets.draftImage_5,
    editTime: 'Edited last month',
    headline: 'Money Is One of the Most Important Things in Life',
  ),
  DraftModel(
    image: AppAssets.draftImage_6,
    editTime: 'Edited last month',
    headline: 'Why Product Thinking is the next big thing in UX Design',
  ),
   DraftModel(
    image: AppAssets.draftImage_1,
    editTime: 'Edited 1m ago',
    headline: '9 Things to Consider Before Buying Your First NFT',
  ),
  DraftModel(
    image: AppAssets.draftImage_2,
    editTime: 'Edited 8h ago',
    headline: 'What your bathroom habits say about your health',
  ),
  DraftModel(
    image: AppAssets.draftImage_3,
    editTime: 'Edited yesterday',
    headline: 'Think therapy is navel-gazing? Think again',
  ),
];
