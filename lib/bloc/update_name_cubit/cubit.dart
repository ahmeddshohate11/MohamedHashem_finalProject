import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/update_name_cubit/state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/profile/profile_model.dart';

class UpDateNameCubit extends Cubit<UpDateNameState> {
  UpDateNameCubit(
    this.api,
  ) : super(UpDateNametInitial());
  final ApiServices api;
  final TextEditingController usernamecontroller = TextEditingController();
  var dio = Dio();

  Future ChangeName() async {
    try {
      emit(UpDateNameloaded());

      final response = await api.patch(
          "https://lostcal.onrender.com/api/user/changename",
          data: {ApiKeys.username: usernamecontroller.text});
      emit(UpDateNameseacsess());
      return response;
    } on ServerException catch (e) {
      emit(UpDateNamefaliouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }

  Future GitProfile() async {
    try {
      emit(Profileloaded());

      final response = await api.get(
        "https://lostcal.onrender.com/api/user/profile",
      );
      emit(Profileseacsess(profilemodel: Profile.fromJson(response)));
      return response;
    } on ServerException catch (e) {
      emit(Profilefaliouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }

  Future logout() async {
    try {
      emit(lougoutloaded());

      final response = await api.get(
        "https://lostcal.onrender.com/api/user/logout",
      );
      emit(lougoutseacsess());
      return response;
    } on ServerException catch (e) {
      emit(lougoutfaliouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }
}
