import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../widgets/account_information.dart';

class AuthorAccountInfo extends StatelessWidget {
  const AuthorAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: const AccountInformation(
        hasVerified: true,
        hasUsername: true,
        name: 'Rayna Carder',
        username: '@rayna_carder',
        bio:
            'Design, Productivity, and Creation. Learn everything you need to improve your design skills.',
      ),
    );
  }
}
