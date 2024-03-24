import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/news_types_chip/news_types_chip.dart';

import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/helpers/navigate.dart';
import '../../../../widgets/global_input.dart';
import '../../widgets/auth_headers.dart';
import '../../widgets/sign_in_up_button.dart';

class PhoneIdentityScreen extends StatelessWidget {
  const PhoneIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: AppPaddings.h24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.verticalSpace,
            const AuthHeaders(
                title: AppTexts.whatsYourPhoneNumber,
                subtitle: AppTexts.sendVerifyCodePhoneSubtitle),
            32.verticalSpace,
            const GlobalInput(
              prefixText: '+994',
            ),
            const Spacer(),
            SignInUpButton(
                text: AppTexts.continuee,
                onTap: () {
                  Navigate.navigateReplacePush(
                    context,
                    const NewsTypesChip(),
                  );
                }),
            32.verticalSpace,
          ],
        ),
      ),
    );
  }
}
