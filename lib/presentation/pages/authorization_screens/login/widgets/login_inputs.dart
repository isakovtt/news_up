import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/login/login_cubit.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../widgets/global_input.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          GlobalInput(controller: cubit.emailController,
            validator: (v) => cubit.validateEmail,
            text: AppTexts.yourMail,
          ),
          14.verticalSpace,
          GlobalInput(controller: cubit.passwordController,
            validator: (v) => cubit.validatePassword,
            text: AppTexts.password,
            suffixIcon: const Icon(
              Icons.visibility_off_outlined,
              color: AppColors.greyScale_500,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
