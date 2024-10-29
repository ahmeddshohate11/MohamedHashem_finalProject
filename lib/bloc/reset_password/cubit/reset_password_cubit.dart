import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.api) : super(ResetPasswordInitial());
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confarmpasscontroller = TextEditingController();
  final ApiServices api;

  Future Resetnewpasss() async {
    try {
      emit(ResetPasswordloaded());

      final response = await api
          .put("https://lostcal.onrender.com/api/user/resetPassword", data: {
        ApiKeys.email: emailcontroller.text,
        "newPassword": passwordcontroller.text,
        "passwordConfirm": confarmpasscontroller.text,
      });

      emit(ResetPasswordseacsess(massage: " goood"));
      return response.data;
    } on ServerException catch (e) {
      emit(ResetPasswordfaliouer(errormassage: e.errorModel.message));
    }
  }
}
