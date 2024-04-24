import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/cubits/phone_verfiy/phone_verify_cubit.dart';

import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/navigate.dart';
import '../../news_types_chip/news_types_chip.dart';
import '../../widgets/auth_headers.dart';
import '../../widgets/sign_in_up_button.dart';
import 'country_picker_and_phone.dart';
import 'phone_identity_app_bar.dart';

class PhoneIdentityScreen extends StatelessWidget {
  const PhoneIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneVerifyCubit>();
    return Scaffold(
      appBar: const PhoneIdentityAppBar(),
      body: Padding(
        padding: AppPaddings.h24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,
            const AuthHeaders(
              title: AppTexts.whatsYourPhoneNumber,
              subtitle: AppTexts.sendVerifyCodePhoneSubtitle,
            ),
            32.verticalSpace,
            const CountryPickerAndPhone(),
            const Spacer(),
            SignInUpButton(
              
              text: AppTexts.continuee,
              onTap: () {
                cubit.signInWithPhone();
                Navigate.navigateReplacePush(
                  context,
                  const NewsTypesChip(),
                );
              },
            ),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
