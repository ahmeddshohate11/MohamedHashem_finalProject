import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_state.dart';
import 'package:graduationproject/bloc/search_cubit/state/search_state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';
import 'package:graduationproject/data/model/search_model/result_model.dart';

class MyLostCubit extends Cubit<MyLostState> {
  MyLostCubit(
    this.api,
  ) : super(MyLostInitial());
  final ApiServices api;
  Mylost? listlostes;
  // ignore: non_constant_identifier_names
  Future GetMyLost() async {
    try {
      emit(MyLostloaded());

      final response = await api.get(
        'https://lostcal.onrender.com/api/mylost',
      );

      emit(MyLostseacsess(mylost: Mylost.fromJson(response)));
      return response;
    } on ServerException catch (e) {
      emit(MyLostfaliouer(errormassage: "your lost not found"));
    }
  }
}
