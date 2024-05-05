import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';

import '../../../../data/models/cotegory_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class HomeCotegoryListView extends StatefulWidget {
  const HomeCotegoryListView({super.key});

  @override
  State<HomeCotegoryListView> createState() => _HomeCotegoryListViewState();
}

class _HomeCotegoryListViewState extends State<HomeCotegoryListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26.r,
      child: ListView.separated(
        padding: AppPaddings.h24,
        scrollDirection: Axis.horizontal,
        itemCount: cotegory.length,
        separatorBuilder: (context, index) => 16.horizontalSpace,
        itemBuilder: (context, index) {
          final item = cotegory[index];
          return GestureDetector(
            onTap: () async {
              setState(() {
                selectedIndex = index;
              });
              if (index == selectedIndex) {
                final selectedCategory = cotegory[index].catogory;
                final snapshot = await FirebaseFirestore.instance
                    .collection('posts')
                    .where('category', isEqualTo: selectedCategory)
                    .get();
                snapshot.docs.forEach((doc) {
                  print(doc.data());
                });
              }
            },
            child: Text(
              item.catogory,
              style: index == selectedIndex
                  ? AppTextStyles.secondBaseS16W500.copyWith(
                      color: AppColors.primaryBase,
                    )
                  : AppTextStyles.secondBaseS16W500,
            ),
          );
        },
      ),
    );
  }
}
