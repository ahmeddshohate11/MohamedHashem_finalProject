// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'forget_password_cubit.dart';

sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

class ForgetPasswordloaded extends ForgetPasswordState {}

class ForgetPasswordseacsess extends ForgetPasswordState {
  String massage;
  ForgetPasswordseacsess({
    required this.massage,
  });
}

class ForgetPasswordfaliouer extends ForgetPasswordState {
  String errormassage;
  ForgetPasswordfaliouer({
    required this.errormassage,
  });
}
