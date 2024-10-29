// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:graduationproject/data/model/profile/profile_model.dart';

@immutable
sealed class UpDateNameState {}

final class UpDateNametInitial extends UpDateNameState {}

class UpDateNameloaded extends UpDateNameState {}

class UpDateNameseacsess extends UpDateNameState {}

class UpDateNamefaliouer extends UpDateNameState {
  String errormassage;
  UpDateNamefaliouer({
    required this.errormassage,
  });
}

class Profileloaded extends UpDateNameState {}

class Profileseacsess extends UpDateNameState {
  final Profile profilemodel;

  Profileseacsess({required this.profilemodel});
}

class Profilefaliouer extends UpDateNameState {
  String errormassage;
  Profilefaliouer({
    required this.errormassage,
  });
}

class lougoutloaded extends UpDateNameState {}

class lougoutseacsess extends UpDateNameState {}

class lougoutfaliouer extends UpDateNameState {
  String errormassage;
  lougoutfaliouer({
    required this.errormassage,
  });
}
