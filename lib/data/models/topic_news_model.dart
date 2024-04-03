import '../../utils/constants/app_assets.dart';

class TopicNewsModel {
  String image;
  String sourceIcon;
  String categoryText;
  String headlineText;
  String sourceName;
  String sharedTimeText;

  TopicNewsModel({
    required this.categoryText,
    required this.sourceIcon,
    required this.image,
    required this.headlineText,
    required this.sourceName,
    required this.sharedTimeText,
  });
}

List<TopicNewsModel> topicNews = [
  TopicNewsModel(
    image: AppAssets.topicNewsImage_1,
    categoryText: 'Business',
    headlineText: 'The Shifting Landscape of Business',
    sharedTimeText: '10 min',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  TopicNewsModel(
    image: AppAssets.topicNewsImage_2,
    categoryText: 'Business',
    headlineText: 'Revolutionizing the Commerce Landscape',
    sharedTimeText: '17 min',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  TopicNewsModel(
    image: AppAssets.topicNewsImage_3,
    categoryText: 'Business',
    headlineText: 'Business Growth in a Changing Landscape',
    sharedTimeText: '24 min',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  TopicNewsModel(
    image: AppAssets.topicNewsImage_4,
    categoryText: 'Business',
    headlineText: 'Exploring the Business World',
    sharedTimeText: '33 min',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.nbcVector,
  ),
  TopicNewsModel(
    image: AppAssets.girdViewImage_1,
    categoryText: 'Innovation',
    headlineText: 'Why you can\'t have legs in virtual reality (yet)',
    sharedTimeText: '1h ago',
    sourceName: 'DNV News',
    sourceIcon: AppAssets.esSpain,
  ),
  TopicNewsModel(
    image: AppAssets.girdViewImage_6,
    categoryText: 'Crypto',
    headlineText: 'Exploring the Latest in Cryptocurrency Trends',
    sharedTimeText: '5h ago',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  TopicNewsModel(
    image: AppAssets.detailImage_1,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    sharedTimeText: '1h ago',
    sourceName: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
  TopicNewsModel(
    image: AppAssets.cryptoImage,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    sharedTimeText: '1h ago',
    sourceName: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
];
