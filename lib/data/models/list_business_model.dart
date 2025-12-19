import 'package:newsup_app/utils/constants/app_assets.dart';

class ListBusinessModel {
  String image;
  String cotegoryName;
  String title;
  String time;
  String comment;

  ListBusinessModel({
    required this.image,
    required this.cotegoryName,
    required this.title,
    required this.time,
    required this.comment,
  });
}

List<ListBusinessModel> listBusiness = [
  ListBusinessModel(
    image: AppAssets.business_7,
    cotegoryName: 'Business',
    title: 'E-commerce Continues Rapid Expansion',
    time: 'Mar 1',
    comment: '3',
  ),
  ListBusinessModel(
    image: AppAssets.business_6,
    cotegoryName: 'Business',
    title: 'AI Revolutionizes Business Operations',
    time: 'Mar 1',
    comment: '0',
  ),
  ListBusinessModel(
    image: AppAssets.business_5,
    cotegoryName: 'Business',
    title: 'Tech Stocks Surge Amid Market Growth',
    time: 'Mar 1',
    comment: '12',
  ),
  ListBusinessModel(
    image: AppAssets.business_4,
    cotegoryName: 'Business',
    title: 'How Technology is Revolutionizing Business',
    time: 'Mar 1',
    comment: '7',
  ),
  ListBusinessModel(
    image: AppAssets.business_3,
    cotegoryName: 'Business',
    title: 'Innovation Leads to Record Sales Figures',
    time: 'Mar 1',
    comment: '0',
  ),
   ListBusinessModel(
    image: AppAssets.business_2,
    cotegoryName: 'Business',
    title: 'Industry Giants Expand Into New Markets',
    time: 'Mar 1',
    comment: '2',
  ),
   ListBusinessModel(
    image: AppAssets.business_1,
    cotegoryName: 'Business',
    title: 'Business Leaders Push for Remote Work Solutions',
    time: 'Mar 1',
    comment: '2',
  ),
];
