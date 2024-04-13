import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/services/login_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  final loginService = LoginService();

  Future<void> getLogin() async {
    emit(LoginLoading());
    final result = await loginService.userLogin(
        emailController.text, passwordController.text);
    emit(LoginSuccess(result!));
    emit(LoginError());
  }

  @override
  Future<void> close() async {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  Future<void> get validateLogin async {
    if (formKey.currentState?.validate() ?? false) {
      getLogin();
    }
  }

  String? get validatePassword {
    if (passwordController.text.isEmpty) {
      return 'Password is required';
    } else if (passwordController.text.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? get validateEmail {
    if (emailController.text.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(emailController.text)) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
