import 'package:flutter/material.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

import '../../../widgets/account_information.dart';

class AuthorAccountInfo extends StatelessWidget {
  const AuthorAccountInfo(
      {super.key,
      required this.name,
      required this.username,
      required this.about});

  final String name;
  final String username;
  final String about;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h24,
      child: AccountInformation(
        hasVerified: true,
        hasUsername: true,
        name: name,
        username: username,
        about: about,
      ),
    );
  }
}
