import 'package:flutter/material.dart';

import '../../../data/model/search_model/result_model.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

class Searchloaded extends SearchState {}

class Searchseacsess extends SearchState {
  final SerachModel searchlist;

  Searchseacsess({required this.searchlist});
}

// ignore: must_be_immutable
class Searchfaliouer extends SearchState {
  String errormassage;
  Searchfaliouer({
    required this.errormassage,
  });
}
