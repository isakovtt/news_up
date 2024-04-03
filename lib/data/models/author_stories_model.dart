import '../../utils/constants/app_assets.dart';

class AuthorStoriesModel {
  String image;
  String sourceIcon;
  String categoryText;
  String headlineText;
  String sourceName;
  String timeText;
  String commentText;

  AuthorStoriesModel({
    required this.categoryText,
    required this.sourceIcon,
    required this.image,
    required this.headlineText,
    required this.sourceName,
    required this.timeText,
    required this.commentText,
  });
}

List<AuthorStoriesModel> authorStories = [
  AuthorStoriesModel(
    image: AppAssets.detailAuthorImage_1,
    categoryText: 'Design',
    headlineText: 'Navigating the World of UI/UX Design',
    commentText: '3',
    timeText: '1h ago',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  AuthorStoriesModel(
    image: AppAssets.detailAuthorImage_2,
    categoryText: 'Design',
    headlineText:
        'Revolutionizing Digital Interaction: The Latest Trends in UI/UX Design',
    commentText: '15',
    timeText: '3h ago',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  AuthorStoriesModel(
    image: AppAssets.detailAuthorImage_3,
    categoryText: 'Design',
    headlineText: 'Elevating User Experience: The Latest in UI/UX Design',
    commentText: '23',
    timeText: '1d ago',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  AuthorStoriesModel(
    image: AppAssets.unnamed_1,
    categoryText: 'Technology',
    headlineText: 'Innovations in Business: The Future of Commerce',
    commentText: '23',
    timeText: '14h ago',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  AuthorStoriesModel(
    image: AppAssets.innovationPicture,
    categoryText: 'Innovation',
    headlineText: 'Talking on the Moon: The quest to establish lunar wi-fi',
    commentText: '32',
    timeText: '2h ago',
    sourceName: 'DNV News',
    sourceIcon: AppAssets.esSpain,
  ),
  AuthorStoriesModel(
    image: AppAssets.cryptoImage,
    categoryText: 'Crypto',
    headlineText: 'Exploring the Latest in Cryptocurrency Trends',
    commentText: '3',
    timeText: '5h ago',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  AuthorStoriesModel(
    image: AppAssets.homeLivePicture,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    commentText: '38',
    timeText: '1h ago',
    sourceName: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
];
