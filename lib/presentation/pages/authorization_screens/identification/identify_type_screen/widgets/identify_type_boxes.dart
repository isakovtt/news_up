import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../utils/constants/app_assets.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../../utils/helpers/navigate.dart';
import '../../../widgets/sign_in_up_button.dart';
import '../../email_identity_screen/email_identity_screen.dart';
import '../../phone_identification_screen/phone_identity_screen.dart';
import 'identity_type_box.dart';

class IdentifyTypeBoxes extends StatefulWidget {
  const IdentifyTypeBoxes({
    super.key,
    this.onEmailTap,
    this.onPhoneTap,
  });
  final void Function()? onEmailTap;
  final void Function()? onPhoneTap;

  @override
  State<IdentifyTypeBoxes> createState() => _IdentifyTypeBoxesState();
}

class _IdentifyTypeBoxesState extends State<IdentifyTypeBoxes> {
  Color chekedPhone = AppColors.greyScale_50;
  Color chekedEmail = AppColors.greyScale_50;
  bool continueEmail = false;
  bool continuePhone = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IdentityTypeBox(
          onTap: () {
            continueEmail = true;
            chekedPhone = AppColors.greyScale_50;
            chekedEmail = AppColors.primaryBase;
            setState(() {});
          },
          asset: AppAssets.email,
          title: AppTexts.email,
          subtitle: AppTexts.withYourEmail,
          color: chekedEmail,
        ),
        16.verticalSpace,
        IdentityTypeBox(
          onTap: () {
            continueEmail = false;
            chekedPhone = AppColors.primaryBase;
            chekedEmail = AppColors.greyScale_50;
            setState(() {});
          },
          asset: AppAssets.phoneCalling,
          title: AppTexts.phoneNumber,
          subtitle: AppTexts.withYourPhoneNumber,
          color: chekedPhone,
        ),
        32.verticalSpace,
        SignInUpButton(
          onTap: () {
            if (continueEmail == true) {
              Navigate.navigatePush(
                context,
                const EmailIdentityScreen(),
              );
            } else {
              Navigate.navigatePush(
                context,
                const PhoneIdentityScreen(),
              );
            }
          },
          text: AppTexts.continuee,
        ),
        32.verticalSpace,
      ],
    );
  }
}
