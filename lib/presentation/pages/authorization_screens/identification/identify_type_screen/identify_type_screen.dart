import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../widgets/auth_headers.dart';
import 'widgets/identify_type_boxes.dart';

class IdentifyTypeScreen extends StatelessWidget {
  const IdentifyTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
              // const Spacer(),
              //  SignInUpButton(onTap: () {
                
              // },
              //   text: AppTexts.continuee,
              //   // onTap: Navigate.navigatePush(context, page),
              // ),
              // 32.verticalSpace,
            ],
          ),
        ));
  }
}
