import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/services/firebase/login_service.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  final loginService = LoginService();
  final box = Hive.box('login');

  Future<void> getLogin() async {
    try {
      emit(LoginLoading());
      final loginData = box.get('loginId');
      log('$loginData');

      final result = await loginService.userLogin(
          emailController.text, passwordController.text);

      if (result is UserCredential) {
        emit(LoginSuccess(result));
        box.put('loginId', result.user!.uid);
      }
      emit(LoginError());
    } catch (e) {
      emit(LoginError());
    }
  }

  @override
  Future<void> close() async {
    emailController.dispose();
    emailController.clear();
    passwordController.dispose();
    passwordController.clear();
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

  void clearBoxAndLogOut() async {
    log('box login clear');
    await box.clear();
    await FirebaseAuth.instance.signOut();
  }
}
