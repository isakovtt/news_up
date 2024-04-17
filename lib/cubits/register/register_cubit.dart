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
  final GlobalKey<FormState> formKey = GlobalKey();

  final registerService = RegisterService();

  Future<void> getRegister() async {
    emit(RegisterLoading());
    final result = await registerService.signUp(
      nameController.text,
      emailController.text,
      passwordController.text,
    );
    emit(RegisterSuccess(result!));
  }

  @override
  Future<void> close() async {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  Future<void> get validateRegister async {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      await getRegister();
    }
  }

  String? get validateName {
    if (nameController.text.isEmpty) {
      return 'Full name is required';
    }
    return null;
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
