part of 'reset_password_cubit.dart';

sealed class ResetPasswordState {}

final class ResetPasswordInitial extends ResetPasswordState {}

class ResetPasswordloaded extends ResetPasswordState {}

class ResetPasswordseacsess extends ResetPasswordState {
  String massage;
  ResetPasswordseacsess({
    required this.massage,
  });
}

class ResetPasswordfaliouer extends ResetPasswordState {
  String errormassage;
  ResetPasswordfaliouer({
    required this.errormassage,
  });
}
