// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../utils/constants/app_assets.dart';
// import '../../../../utils/constants/app_text_styles.dart';
// import '../../../../utils/extensions/time_ago_extension.dart';
// import '../../../widgets/custom_basic_list_tile.dart';

// class ExploreStoriesListView extends StatelessWidget {
//   const ExploreStoriesListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: FirebaseFirestore.instance.collection('posts').snapshots(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           return const SizedBox.shrink();
//         }
//         final posts = snapshot.data!.docs;
//         return ListView.separated(
//           padding: const EdgeInsets.only(left: 22, right: 26),
//           shrinkWrap: true,
//           scrollDirection: Axis.vertical,
//           itemCount: posts.length,
//           physics: const NeverScrollableScrollPhysics(),
//           separatorBuilder: (context, index) => 16.verticalSpace,
//           itemBuilder: (context, index) {
//             // final headline = newsheadline[index];

//             final post = posts[index];
//             final Timestamp timestamp = post['time'];

//             log(post['newsTitle']);
//             return StreamBuilder(
//               stream: FirebaseFirestore.instance
//                   .collection('channels')
//                   .where('channel', isEqualTo: post['channel'])
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return const SizedBox.shrink();
//                 }
//                 final channel = snapshot.data!.docs.first.data();
//                 return GlobalBasicListTile(
//                   image: AppAssets.authorImage_6,
//                   categoryName: post['category'],
//                   title: post['newsTitle'],
//                   sourceIcon: channel['logo'],
//                   sourceName: post['channel'] + ' News',
//                   timeText: timestamp.toDate().toTimeAgo(),
//                   commentText: post['commentsCount'].toString(),
//                   titleStyle: AppTextStyles.greyScale400s14W700,
//                   style: AppTextStyles.greyScale400s12W400,
//                   hasSource: true,
//                   hasDot: true,
//                   onTap: () {},
//                 );
//               },
//             );
//           },
//         );
//       },
//     );
//   }
// }
