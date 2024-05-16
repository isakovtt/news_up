import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/edit_profile/edit_profile_cubit.dart';
import '../../../../utils/constants/app_colors.dart';

import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../widgets/global_input.dart';
import 'edit_profile_input.dart';

class EditProfileInputs extends StatelessWidget {
  const EditProfileInputs({super.key});

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

          return Column(
            children: [
              EditProfileInput(
                controller: cubit.nameController,
                text: AppTexts.fullName,
                hintText: user['name'].toString(),
              ),
              16.verticalSpace,
              EditProfileInput(
                controller: cubit.emailController,
                text: AppTexts.email,
                hintText: user['email'],
              ),
              16.verticalSpace,
              Row(
                children: [
                  Text(
                    AppTexts.password,
                    style: AppTextStyles.greyScale400s14W700,
                  ),
                  const Spacer(),
                  Text(AppTexts.change, style: AppTextStyles.primaryBaseS14W500)
                ],
              ),
              12.verticalSpace,
              GlobalInput(
                initialValue: user['password'],
                suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: AppColors.greyScale_400,
                ),
                obscureText: true,
              ),
              16.verticalSpace,
              EditProfileInput(
                controller: cubit.phoneController,
                hintText: user['phoneNumber'] ?? 'Phone number is not listed',
                text: AppTexts.phoneNumber,
              ),
              12.verticalSpace,
              EditProfileInput(
                controller: cubit.aboutController,
                text: AppTexts.about,
                hintText: user['about'] ?? 'About is Empty',
              )
            ],
          );
        });
  }
}
