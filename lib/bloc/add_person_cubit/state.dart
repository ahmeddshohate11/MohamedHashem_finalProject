import 'package:flutter/material.dart';

@immutable
sealed class AddPersonState {}

final class AddPersonInitial extends AddPersonState {}

final class uploadimagestate extends AddPersonState {}

final class uploudmorestate extends AddPersonState {}

final class uploadlistimages extends AddPersonState {}

final class picimagesucsess extends AddPersonState {}

final class picimagenot extends AddPersonState {}

class AddPersonloaded extends AddPersonState {}

class AddPersonsucsess extends AddPersonState {}

class AddPersonfaliouer extends AddPersonState {
  String errormassage;
  AddPersonfaliouer({
    required this.errormassage,
  });
}
