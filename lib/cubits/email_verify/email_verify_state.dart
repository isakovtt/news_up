part of 'email_verify_cubit.dart';

@immutable
sealed class SendEmailVerifyState {}

final class SendEmailVerifyInitial extends SendEmailVerifyState {}

final class SendEmailVerifyLoading extends SendEmailVerifyState {}

final class SendEmailVerifySucces extends SendEmailVerifyState {

 final void verify;

  SendEmailVerifySucces({required this.verify});
}

final class SendEmailVerifyError extends SendEmailVerifyState {}
