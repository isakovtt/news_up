import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../../cubits/phone_verfiy/phone_verify_cubit.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_text_styles.dart';
import '../../../../widgets/inside_colored_button.dart';

class PhoneVerifyPinputScreen extends StatelessWidget {
  const PhoneVerifyPinputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneVerifyCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phone Verify ',
          style: AppTextStyles.greyScale900s16W700,
        ),
      ),
      body: Center(
        child: Padding(
          padding: AppPaddings.all24,
          child: Column(
            children: [
              Text(
                'Enter verification code',
                style: AppTextStyles.greyScale900s24W700,
              ),
              24.verticalSpace,
              Pinput(
                length: 6,
                controller: cubit.verifyController,
                onCompleted: (v) => cubit.verify(context),
              ),
              32.verticalSpace,
              Text(
                'Resend code',
                style: AppTextStyles.greyScale400s14W400,
              ),
              const Spacer(),
              GestureDetector(
                child: const InsideColoredButton(
                  text: 'Verified',
                  width: double.infinity,
                ),
                onTap: () => cubit.verify(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
