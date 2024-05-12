import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cubits/home/home_cubit.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_progress_indicator.dart';

class HomeCotegoryListView extends StatelessWidget {
  const HomeCotegoryListView({
    super.key,
    required this.selectedCategory,
  });

  final String selectedCategory;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return SizedBox(
      height: 26.r,
      child: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('categories').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const GlobalProgressIndicator();
            }
            final Map<String, dynamic> categories =
                (snapshot.data?.docs ?? []).first.data()['categories'];
            return ListView.separated(
              padding: AppPaddings.h24,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => 16.horizontalSpace,
              itemBuilder: (context, index) {
                final item = categories.values.elementAt(index);
                return GestureDetector(
                  onTap: () =>
                      cubit.selectedCategorySubject.value = item.toString(),
                  child: Text(
                    item,
                    style: item == selectedCategory
                        ? AppTextStyles.secondBaseS16W500.copyWith(
                            color: AppColors.primaryBase,
                          )
                        : AppTextStyles.secondBaseS16W500,
                  ),
                );
              },
            );
          }),
    );
  }
}
