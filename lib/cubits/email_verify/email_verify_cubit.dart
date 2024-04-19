import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsup_app/data/services/email_verify_service.dart';

part 'email_verify_state.dart';

class EmailVerifyCubit extends Cubit<EmailVerifyState> {
  EmailVerifyCubit() : super(EmailVerifyInitial());

  final emailVerifyService = EmailVerifyService();
  final emailController = TextEditingController();

  Future<void> getEmailVerify() async {
    emit(EmailVerifyLoading());
    final verify = emailVerifyService.getEmailVerify(emailController.text);
    log('cubit isledi');
    emit(EmailVerifySucces(verify: verify));

    return verify;
  }

  Future<void> sendEmailVerify() async {
    final verify = emailVerifyService.getEmailVerify(emailController.text);
    log('cubit isledi');
    return verify;
  }

  @override
  close() async {
    emailController.dispose();
    super.close();
  }
}
