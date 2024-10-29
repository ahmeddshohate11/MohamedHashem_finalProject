import 'package:flutter/material.dart';
import 'package:graduationproject/data/model/signup_model/signup_suacess.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

class signuploaded extends SignupState {}

class SignupSucsess extends SignupState {
  final SignupSuacsess listsignup;

  SignupSucsess({required this.listsignup});
}

class Signupfaliouer extends SignupState {
  String errormassage;
  Signupfaliouer({
    required this.errormassage,
  });
}
