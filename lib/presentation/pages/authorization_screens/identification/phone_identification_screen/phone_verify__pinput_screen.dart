import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsup_app/cubits/phone_verfiy/phone_verify_cubit.dart';
import 'package:newsup_app/utils/constants/app_colors.dart';
import 'package:newsup_app/utils/constants/app_paddings.dart';

class PhoneVerifyPinputScreen extends StatelessWidget {
  const PhoneVerifyPinputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PhoneVerifyCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Verify Screen'),
      ),
      body: Center(
        child: Padding(
          padding: AppPaddings.all24,
          child: Column(
            children: [
              // Pinput(
              //   length: 6,
              //   controller: cubit.verifyController,
              //   onCompleted: (v) => cubit.verify(context),
              // ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryBase,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () => cubit.verify(context),
                child: const Text('Verify'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
