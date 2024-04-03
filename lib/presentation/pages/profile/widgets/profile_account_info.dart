import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../widgets/account_information.dart';

class ProfileAccountInfo extends StatelessWidget {
  const ProfileAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: const AccountInformation(
        hasVerified: true,
        hasUsername: true,
        name: 'Michella Barkin',
        username: '@barkin_michella',
        bio:
            'Design, Productivity, and Creation. Learn everything you need to improve your design skills.',
      ),
    );
  }
}
