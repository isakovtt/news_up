part of 'email_verify_cubit.dart';

@immutable
sealed class EmailVerifyState {}

final class EmailVerifyInitial extends EmailVerifyState {}

final class EmailVerifyLoading extends EmailVerifyState {}

final class EmailVerifySucces extends EmailVerifyState {

 final void verify;

  EmailVerifySucces({required this.verify});
}

final class EmailVerifyError extends EmailVerifyState {}
