import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/email_identity_screen/email_identity_screen.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/identify_type_screen/widgets/identify_type_boxes.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/identification/phone_identification_screen/phone_identity_screen.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/widgets/auth_headers.dart';
import 'package:newsup_app/presentation/pages/authorization_screens/widgets/sign_in_up_button.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';
import 'package:newsup_app/utils/helpers/navigate.dart';
import '../../../../../utils/constants/app_texts.dart';

class IdentifyTypeScreen extends StatelessWidget {
  const IdentifyTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Padding(
          padding: AppPaddings.h24,
          child: Column(
            children: [
              const AuthHeaders(
                title: AppTexts.verifyYourIdentity,
                subtitle: AppTexts.verifyHelpDescription,
              ),
              24.verticalSpace,
              const IdentifyTypeBoxes(),
              const Spacer(),
              const SignInUpButton(
                text: AppTexts.continuee,
                // onTap: Navigate.navigatePush(context, page),
              ),
              32.verticalSpace,
            ],
          ),
        ));
  }
}
