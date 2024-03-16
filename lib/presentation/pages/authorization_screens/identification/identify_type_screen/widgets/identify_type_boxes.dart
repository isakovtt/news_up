import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/email_identity_screen/email_identity_screen.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/identify_type_screen/widgets/identity_type_box.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';

import '../../../../../../utils/constants/app_assets.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../phone_identification_screen/phone_identity_screen.dart';

class IdentifyTypeBoxes extends StatelessWidget {
  const IdentifyTypeBoxes({super.key, this.onEmailTap, this.onPhoneTap});
  final void Function()? onEmailTap;
  final void Function()? onPhoneTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigate.navigatePush(context, const EmailIdentityScreen());
          },
          child: const IdentityTypeBox(
            asset: AppAssets.email,
            title: AppTexts.email,
            subtitle: AppTexts.withYourEmail,
          ),
        ),
        16.verticalSpace,
        GestureDetector(
          onTap: () {
                  Navigate.navigatePush(context, const PhoneIdentityScreen());
                },
          child: const IdentityTypeBox(
            asset: AppAssets.phoneCalling,
            title: AppTexts.phoneNumber,
            subtitle: AppTexts.withYourPhoneNumber,
            color: AppColors.greyScale_50,
          ),
        ),
      ],
    );
  }
}
