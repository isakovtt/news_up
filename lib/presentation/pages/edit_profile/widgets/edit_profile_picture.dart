import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newsup_app/utils/constants/app_assets.dart';

import '../../../../cubits/edit_profile/edit_profile_cubit.dart';
import '../../../../utils/constants/app_colors.dart';

class EditProfilePicture extends StatelessWidget {
  const EditProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditProfileCubit>();
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('users')
          .where(
            'uid',
            isEqualTo: FirebaseAuth.instance.currentUser!.uid,
          )
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final user = snapshot.data!.docs.first;
        return Center(
          child: Stack(
            children: [
              CircleAvatar(
                radius: 44.r,
                backgroundColor: AppColors.greyScale_300,
                child: ClipOval(
                  child: StreamBuilder(
                    stream: cubit.getImageStream,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData || snapshot.data == null) {
                        return Image.network(
                          user['profilePicture'] ??
                              AppAssets.netwokProfileAvatar,
                          width: 88.w,
                          height: 88.h,
                          fit: BoxFit.cover,
                        );
                      }

                      return Image(
                        fit: BoxFit.cover,
                        height: 88.h,
                        width: 88.w,
                        image: FileImage(
                          snapshot.data!,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  child: CircleAvatar(
                    radius: 16.r,
                    backgroundColor: AppColors.greyScale_900,
                    child: const Icon(
                      Icons.photo_camera_outlined,
                    ),
                  ),
                  onTap: () async {
                    final XFile? xFile = await ImagePicker().pickImage(
                      source: ImageSource.gallery,
                    );
                    cubit.loadImage(File(xFile!.path));
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
