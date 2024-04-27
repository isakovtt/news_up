import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/services/email_verify_service.dart';

part 'email_verify_state.dart';

class SendEmailVerifyCubit extends Cubit<SendEmailVerifyState> {
  SendEmailVerifyCubit() : super(SendEmailVerifyInitial());

  final sendEmailVerifyService = SendEmailVerifyService();
  final emailController = TextEditingController();

  Future<void> getEmailVerify() async {
    emit(SendEmailVerifyLoading());

    final verify = sendEmailVerifyService.sendEmailVerify();
    emit(SendEmailVerifySucces(verify: verify));

    return verify;
  }

  @override
  close() async {
    emailController.dispose();
    super.close();
  }
}
