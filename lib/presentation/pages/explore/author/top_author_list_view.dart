import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../cubits/users/users_cubit.dart';
import '../../../../utils/constants/app_paddings.dart';
import 'author_tile.dart';

class TopAuthorListView extends StatelessWidget {
  const TopAuthorListView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UsersCubit>();
    return StreamBuilder(
        stream: cubit.getUsers(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                height: 24.h,
                width: 24.w,
                child: const CircularProgressIndicator.adaptive(),
              ),
            );
          }
          final data = snapshot.data;
          return ListView.separated(
            padding: AppPaddings.h24,
            // itemCount: topAuthors.length,
            itemCount: data?.docs.length ?? 0,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => 12.verticalSpace,
            itemBuilder: (context, index) {
              // final author = topAuthors[index];
              final author = data!.docs[index].data();
              return AuthorTile(
                hasVerifiedIcon: true,
                // profileIcon: author.profileIcon,
                profileIcon: '',
                // name: author.name,
                name: author['name'],
                // username: author.username,
                username: '@${author['name']
                        .toString()
                        .replaceAll(' ', '_')
                        .toLowerCase()}',
              );
            },
          );
        });
  }
}
