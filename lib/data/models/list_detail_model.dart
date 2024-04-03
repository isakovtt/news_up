import 'package:newsup_app/utils/constants/app_assets.dart';

class ListDetailModel {
  String image;
  String cotegoryName;
  String title;
  String time;
  String comment;

  ListDetailModel({
    required this.image,
    required this.cotegoryName,
    required this.title,
    required this.time,
    required this.comment,
  });
}

List<ListDetailModel> listDetail = [
  ListDetailModel(
    image: AppAssets.listDetailImage_1,
    cotegoryName: 'Design',
    title: 'Design with Nature at Heart',
    time: 'Jul 21',
    comment: '3',
  ),
  ListDetailModel(
    image: AppAssets.listDetailImage_2,
    cotegoryName: 'Design',
    title: '10 lessons I learned as a Visual Designer',
    time: 'May 30',
    comment: '0',
  ),
  ListDetailModel(
    image: AppAssets.listDetailImage_3,
    cotegoryName: 'Design',
    title: '8 Best websites to help you practice UX',
    time: 'Jan 16',
    comment: '92',
  ),
  ListDetailModel(
    image: AppAssets.listDetailImage_4,
    cotegoryName: 'Design',
    title: 'How Technology is Revolutionizing Business',
    time: 'Dec 25',
    comment: '123',
  ),
  ListDetailModel(
    image: AppAssets.listDetailImage_1,
    cotegoryName: 'Design',
    title: '5 ways to Elevate your value to new clients',
    time: 'Oct 13',
    comment: '31',
  ),
];
