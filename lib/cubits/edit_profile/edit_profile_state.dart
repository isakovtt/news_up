part of 'edit_profile_cubit.dart';

@immutable
sealed class EditProfileState {}

final class EditProfileInitial extends EditProfileState {}

final class EditProfileLoading extends EditProfileState {}

final class EditProfileSuccess extends EditProfileState {
  // final String name;
  // final String email;

  // EditProfileSuccess(this.name, this.email);
}

final class EditProfileError extends EditProfileState {}
