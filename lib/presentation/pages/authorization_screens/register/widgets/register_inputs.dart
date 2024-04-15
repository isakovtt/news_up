import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../cubits/register/register_cubit.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../widgets/global_input.dart';

class RegisterInputs extends StatefulWidget {
  const RegisterInputs({super.key});

  @override
  State<RegisterInputs> createState() => _RegisterInputsState();
}

class _RegisterInputsState extends State<RegisterInputs> {
  bool isSecureText = true;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          GlobalInput(
            controller: cubit.nameController,
            validator: (v) => cubit.validateName,
            text: AppTexts.yourName,
          ),
          14.verticalSpace,
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
            suffixIcon: GestureDetector(
              onTap: () {
                isSecureText = !isSecureText;
                setState(() {});
              },
              child: Icon(
                isSecureText
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
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
