import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/login/login_cubit.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../widgets/global_input.dart';

class LoginInputs extends StatefulWidget {
  const LoginInputs({super.key});

  @override
  State<LoginInputs> createState() => _LoginInputsState();
}

class _LoginInputsState extends State<LoginInputs> {
  bool isSecureText = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          GlobalInput(
            controller: cubit.emailController,
            validator: (v) => cubit.validateEmail,
            text: AppTexts.yourMail,
          ),
          14.verticalSpace,
          GlobalInput(
            obscureText: isSecureText,
            controller: cubit.passwordController,
            validator: (v) => cubit.validatePassword,
            text: AppTexts.password,
            suffixIcon: IconButton(
              onPressed: () {
                isSecureText = !isSecureText;
                setState(() {});
              },
              icon: Icon(
                isSecureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColors.greyScale_500,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
