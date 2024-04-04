import '../../utils/constants/app_assets.dart';

class ProfileStoriesModel {
  String image;
  String sourceIcon;
  String categoryText;
  String headlineText;
  String sourceName;
  String timeText;
  String commentText;

  ProfileStoriesModel({
    required this.categoryText,
    required this.sourceIcon,
    required this.image,
    required this.headlineText,
    required this.sourceName,
    required this.timeText,
    required this.commentText,
  });
}

List<ProfileStoriesModel> profileStories = [
  ProfileStoriesModel(
    image: AppAssets.profileStoriesImage_1,
    categoryText: 'Technology',
    headlineText: 'How Technology is Revolutionizing Business',
    commentText: '3',
    timeText: '1day ago',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  ProfileStoriesModel(
    image: AppAssets.profileStoriesImage_2,
    categoryText: 'Sport',
    headlineText: 'Tech Innovations Transforming the Sports World',
    commentText: '23',
    timeText: 'Sep 21',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  ProfileStoriesModel(
    image: AppAssets.profileStoriesImage_3,
    categoryText: 'Design',
    headlineText:
        'Revolutionizing Digital Interaction: The Latest Trends in UI/UX Design',
    commentText: '38',
    timeText: 'Sep 3',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  ProfileStoriesModel(
    image: AppAssets.unnamed_1,
    categoryText: 'Technology',
    headlineText: 'Innovations in Business: The Future of Commerce',
    commentText: '23',
    timeText: '14h ago',
    sourceName: 'CNN News',
    sourceIcon: AppAssets.cnnVector,
  ),
  ProfileStoriesModel(
    image: AppAssets.innovationPicture,
    categoryText: 'Innovation',
    headlineText: 'Talking on the Moon: The quest to establish lunar wi-fi',
    commentText: '32',
    timeText: '2h ago',
    sourceName: 'DNV News',
    sourceIcon: AppAssets.esSpain,
  ),
  ProfileStoriesModel(
    image: AppAssets.cryptoImage,
    categoryText: 'Crypto',
    headlineText: 'Exploring the Latest in Cryptocurrency Trends',
    commentText: '3',
    timeText: '5h ago',
    sourceName: 'NBC News',
    sourceIcon: AppAssets.nbcVector,
  ),
  ProfileStoriesModel(
    image: AppAssets.homeLivePicture,
    categoryText: 'Culture',
    headlineText: 'Occupied Ukraine forced to vote in Putins election',
    commentText: '38',
    timeText: '1h ago',
    sourceName: 'Kontan News',
    sourceIcon: AppAssets.deGermany,
  ),
];
