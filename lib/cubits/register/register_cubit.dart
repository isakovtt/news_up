import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/services/register_service.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  late final nameController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  final GlobalKey<FormState> formKeyPassword = GlobalKey();
  final GlobalKey<FormState> formKeyName = GlobalKey();
  final GlobalKey<FormState> formKeyEmail = GlobalKey();

  final registerService = RegisterService();

  final firebaseAuth = FirebaseAuth.instance;
  Future<void> getRegister() async {
    emit(RegisterLoading());
    final result = 
    await registerService.userRegister(
        emailController.text, passwordController.text);
    emit(RegisterSuccess(result));

  }

  @override
  Future<void> close() async {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  Future<void> validateRegister() async {
    if (formKeyName.currentState != null &&
        formKeyName.currentState!.validate() &&
        formKeyEmail.currentState != null &&
        formKeyEmail.currentState!.validate() &&
        formKeyPassword.currentState != null &&
        formKeyPassword.currentState!.validate()) {
      getRegister();
    }
  }

  String? validateName() {
    if (nameController.text.isEmpty) {
      return 'Full name is required';
    }
    return null;
  }

  String? validatePassword() {
    if (passwordController.text.isEmpty) {
      return 'Password is required';
    } else if (passwordController.text.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateEmail() {
    if (emailController.text.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(emailController.text)) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
