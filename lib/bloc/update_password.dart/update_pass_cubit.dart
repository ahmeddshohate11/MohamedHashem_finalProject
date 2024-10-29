import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/update_name_cubit/state.dart';
import 'package:graduationproject/bloc/update_password.dart/update_pass_state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/profile/profile_model.dart';

class UpdatePasswordCubit extends Cubit<UpdatePassworfState> {
  UpdatePasswordCubit(
    this.api,
  ) : super(UpdatePasswoedtInitial());
  final ApiServices api;
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController passwordCurrentcontroller =
      TextEditingController();
  final TextEditingController passwordConfirmcontroller =
      TextEditingController();

  var dio = Dio();

  Future ChangePassword() async {
    try {
      emit(UpdatePasswoedloaded());

      final response = await api.patch(EndPoint.changepassword, data: {
        "passwordConfirm": passwordConfirmcontroller.text,
        "password": passwordcontroller.text,
        "passwordCurrent": passwordCurrentcontroller.text
      });
      emit(UpdatePasswoedseacsess());
      return response;
    } on ServerException catch (e) {
      emit(UpdatePasswoedfaliouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }
}
