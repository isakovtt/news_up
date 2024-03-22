import 'package:newsup_app/utils/constants/app_assets.dart';

class NewsHeadlineModel {
  String image;
  String sourceIcon;
  String categoryText;
  String headlineText;
  String sourceText;
  String timeText;
  String commentText;

  NewsHeadlineModel({
    required this.categoryText,
    required this.sourceIcon,
    required this.image,
    required this.headlineText,
    required this.sourceText,
    required this.timeText,
    required this.commentText,
  });
}

List<NewsHeadlineModel> newsheadline = [
  NewsHeadlineModel(
    image: AppAssets.unnamed_1,
    categoryText: 'Technology',
    headlineText: 'Innovations in Business: The Future of Commerce',
    commentText: '23',
    timeText: '14h ago',
    sourceText: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  NewsHeadlineModel(
    image: AppAssets.cryptoImage,
    categoryText: 'Crypto',
    headlineText: 'Exploring the Latest in Cryptocurrency Trends',
    commentText: '16',
    timeText: '5h ago',
    sourceText: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  NewsHeadlineModel(
    image: AppAssets.homeLivePicture,
    categoryText: 'Earth',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    commentText: '38',
    timeText: '9h ago',
    sourceText: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  NewsHeadlineModel(
    image: AppAssets.unnamed_1,
    categoryText: 'Technology',
    headlineText: 'Innovations in Business: The Future of Commerce',
    commentText: '23',
    timeText: '14h ago',
    sourceText: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  NewsHeadlineModel(
    image: AppAssets.innovationPicture,
    categoryText: 'Innovation',
    headlineText: 'Talking on the Moon: The quest to establish lunar wi-fi',
    commentText: '32',
    timeText: '2h ago',
    sourceText: 'DNV News',
    sourceIcon: AppAssets.esSpain,
  ),
  NewsHeadlineModel(
    image: AppAssets.cryptoImage,
    categoryText: 'Crypto',
    headlineText: 'Exploring the Latest in Cryptocurrency Trends',
    commentText: '3',
    timeText: '5h ago',
    sourceText: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  NewsHeadlineModel(
    image: AppAssets.homeLivePicture,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    commentText: '38',
    timeText: '1h ago',
    sourceText: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
];
