import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/widgets/global_progress_indicator.dart';

import '../../../cubits/edit_profile/edit_profile_cubit.dart';
import '../../../utils/constants/app_paddings.dart';
import '../../../utils/constants/app_texts.dart';
import '../../../utils/helpers/navigate.dart';
import '../authorization_screens/widgets/sign_in_up_button.dart';
import '../bottom_navigation/navigation_screen.dart';
import 'widgets/edit_profile_inputs.dart';
import 'widgets/edit_profile_picture.dart';
import 'widgets/global_app_bar.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditProfileCubit>();
    return Scaffold(
      appBar: GlobalAppBar(
        text: AppTexts.editProfile,
        onTap: () => Navigate.navigatePop(
          context,
          const NavigationScreen(),
        ),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: BlocBuilder<EditProfileCubit, EditProfileState>(
          builder: (context, state) {
            if (state is EditProfileLoading) {
              return const GlobalProgressIndicator();
            }
            return ListView(
              children: [
                6.verticalSpace,
                const EditProfilePicture(),
                32.verticalSpace,
                Column(
                  children: [
                    const EditProfileInputs(),
                    30.verticalSpace,
                  ],
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Padding(
        padding: AppPaddings.h24,
        child: SignInUpButton(
          onTap: () {
            cubit.updateUserProfile();
          },
          text: AppTexts.save,
          height: 60,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
