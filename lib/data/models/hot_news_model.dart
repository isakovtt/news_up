import '../../utils/constants/app_assets.dart';

class HotNewsModel {
  String image;
  String sourceIcon;
  String categoryText;
  String headlineText;
  String sourceName;
  String sharedTimeText;

  HotNewsModel({
    required this.categoryText,
    required this.sourceIcon,
    required this.image,
    required this.headlineText,
    required this.sourceName,
    required this.sharedTimeText,
  });
}

List<HotNewsModel> hotNews = [
  HotNewsModel(
    image: AppAssets.girdViewImage_1,
    categoryText: 'Business',
    headlineText: 'Innovations in Business: The Future of Commerce',
    sharedTimeText: '10 min',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  HotNewsModel(
    image: AppAssets.girdViewImage_2,
    categoryText: 'Technology',
    headlineText: 'Trends in Technology: What You Need to Know',
    sharedTimeText: '17 min',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  HotNewsModel(
    image: AppAssets.girdViewImage_3,
    categoryText: 'Sport',
    headlineText: 'Highlights from the World of Athletics',
    sharedTimeText: '24 min',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  HotNewsModel(
    image: AppAssets.girdViewImage_4,
    categoryText: 'Marketing',
    headlineText: 'Revolutionizing Marketing Strategies',
    sharedTimeText: '33 min',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.nbcVector,
  ),
  HotNewsModel(
    image: AppAssets.girdViewImage_5,
    categoryText: 'Innovation',
    headlineText: 'Why you can\'t have legs in virtual reality (yet)',
    sharedTimeText: '1h ago',
    sourceName: 'DNV News',
    sourceIcon: AppAssets.esSpain,
  ),
  HotNewsModel(
    image: AppAssets.girdViewImage_6,
    categoryText: 'Crypto',
    headlineText: 'Exploring the Latest in Cryptocurrency Trends',
    sharedTimeText: '5h ago',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  HotNewsModel(
    image: AppAssets.detailImage_1,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    sharedTimeText: '1h ago',
    sourceName: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
  HotNewsModel(
    image: AppAssets.cryptoImage,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    sharedTimeText: '1h ago',
    sourceName: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
];
