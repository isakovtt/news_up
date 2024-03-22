import 'package:newsup_app/utils/constants/app_assets.dart';

class CommentsModel {
  int? id;
  String? profileImage;
  String? username;
  String? timeText;
  String? commentText;
  String? likesCount;
  String? repliesCount;

  CommentsModel({
    this.id,
    this.profileImage,
    this.username,
    this.timeText,
    this.commentText,
    this.likesCount,
    this.repliesCount,
  });
}

List<CommentsModel> comments = [
  CommentsModel(
    id: 1,
    profileImage: AppAssets.commentPicture_1,
    username: 'Alex Mora Moa',
    commentText:
        'Russia withdraws troops near Ukraine. but I found the market price to recover quite slowly.F',
    likesCount: '7 Likes',
    repliesCount: '0 Replies',
    timeText: '13m ago',
  ),
  CommentsModel(
    id: 2,
    profileImage: AppAssets.commentPicture_2,
    username: 'Jhon Digta',
    commentText:
        'Bullish run is by the corner ,market is at an overbought level now',
    likesCount: '33 Likes',
    repliesCount: '1 Replies',
    timeText: '24m ago',
  ),
  CommentsModel(
    id: 3,
    profileImage: AppAssets.commentPicture_3,
    username: 'Alex Chires',
    commentText:
        'Getting nervous, trying to clear up my schedule so i can stare at the screen for a  hr or so when US opens',
    likesCount: '11 Likes',
    repliesCount: '0 Replies',
    timeText: '30m ago',
  ),
  CommentsModel(
    id: 4,
    profileImage: AppAssets.commentPicture_4,
    username: 'Gina Terry',
    commentText:
        'Glad I\'m on this sinking ship with u all. Makes drowning less....awful?',
    likesCount: '4 Likes',
    repliesCount: '2 Replies',
    timeText: '45m ago',
  ),
  CommentsModel(
    id: 5,
    profileImage: AppAssets.onboardPicture_2,
    username: 'Daniel Mito',
    commentText:
        'Russia withdraws troops near Ukraine.',
    likesCount: '11 Likes',
    repliesCount: '9 Replies',
    timeText: '1m ago',
  ),
];
