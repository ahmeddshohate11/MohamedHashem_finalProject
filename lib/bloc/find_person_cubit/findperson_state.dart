import 'package:flutter/material.dart';

@immutable
sealed class FindpersonState {}

final class FindpersonInitial extends FindpersonState {}

final class uploadimagestate extends FindpersonState {}

class Findpersonloaded extends FindpersonState {}

class Findpersonsucsess extends FindpersonState {
  String message;
  Findpersonsucsess({
    required this.message,
  });
}

class Findpersonfaliouer extends FindpersonState {
  String errormassage;
  Findpersonfaliouer({
    required this.errormassage,
  });
}
