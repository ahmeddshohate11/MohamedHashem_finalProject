// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:graduationproject/data/model/profile/profile_model.dart';

@immutable
sealed class UpdatePassworfState {}

final class UpdatePasswoedtInitial extends UpdatePassworfState {}

class UpdatePasswoedloaded extends UpdatePassworfState {}

class UpdatePasswoedseacsess extends UpdatePassworfState {}

class UpdatePasswoedfaliouer extends UpdatePassworfState {
  String errormassage;
  UpdatePasswoedfaliouer({
    required this.errormassage,
  });
}
