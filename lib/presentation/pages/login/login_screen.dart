import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsup_app/presentation/pages/login/widgets/forgot_password_button.dart';
import '../../../utils/constants/app_paddings.dart';
import 'widgets/login_greeting_text.dart';
import 'widgets/login_inputs.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            const LoginGreetingText(),
            40.verticalSpace,
            const LoginInputs(),
            24.verticalSpace,
            const ForgotPasswordButton(),
          ],
        ),
      ),
    );
  }
}
