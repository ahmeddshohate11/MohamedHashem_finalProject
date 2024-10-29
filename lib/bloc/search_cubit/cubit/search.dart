import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/search_cubit/state/search_state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/search_model/result_model.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(
    this.api,
  ) : super(SearchInitial());
  final TextEditingController nameController = TextEditingController();
  final ApiServices api;
  Future Search() async {
    try {
      emit(Searchloaded());

      final response = await api.get(
        'https://lostcal.onrender.com/api/mylost/search?',
        queryparametrs: {'name': nameController.text},
      );

      emit(Searchseacsess(searchlist: SerachModel.fromJson(response)));
      return response;
    } catch (e) {
      emit(Searchfaliouer(errormassage: "this name not found"));
    }
  }
}
