import 'package:newsup_app/utils/constants/app_assets.dart';

class TopicsModel {
  String topicImage;
  String topicName;
  String followersCount;

  TopicsModel({
    required this.topicImage,
    required this.topicName,
    required this.followersCount,
  });
}

List<TopicsModel> topics = [
  TopicsModel(
    topicImage: AppAssets.topicImage_1,
    topicName: 'Sports',
    followersCount: '131.34K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_2,
    topicName: 'Crypto',
    followersCount: '94.57K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_3,
    topicName: 'Fashion',
    followersCount: '146.24K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_4,
    topicName: 'Business',
    followersCount: '236K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_5,
    topicName: 'Technology',
    followersCount: '253.79K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_6,
    topicName: 'Science',
    followersCount: '62.17K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_7,
    topicName: 'Health',
    followersCount: '120K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_3,
    topicName: 'Fashion',
    followersCount: '146.24K Followers',
  ),
  TopicsModel(
    topicImage: AppAssets.topicImage_4,
    topicName: 'Business',
    followersCount: '236K Followers',
  ),
];
