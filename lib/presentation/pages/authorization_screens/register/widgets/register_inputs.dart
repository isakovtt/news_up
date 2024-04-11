import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../cubits/register/register_cubit.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../widgets/global_input.dart';

class RegisterInputs extends StatelessWidget {
  const RegisterInputs({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Column(
      children: [
        Form(
          key: cubit.formKeyName,
          child: GlobalInput(
            controller: cubit.nameController,
            validator: (p0) {
              return cubit.validateName();
            },
            text: AppTexts.yourName,
          ),
        ),
        14.verticalSpace,
        Form(
          key: cubit.formKeyEmail,
          child: GlobalInput(
            controller: cubit.emailController,
            validator: (p0) => cubit.validateEmail(),
            text: AppTexts.yourMail,
          ),
        ),
        14.verticalSpace,
        Form(
          key: cubit.formKeyPassword,
          child: GlobalInput(
            controller: cubit.passwordController,
            validator: (p0) => cubit.validatePassword(),
            text: AppTexts.password,
            suffixIcon: const Icon(
              Icons.remove_red_eye_outlined,
              color: AppColors.greyScale_500,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
