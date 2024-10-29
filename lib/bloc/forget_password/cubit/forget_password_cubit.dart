import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.api) : super(ForgetPasswordInitial());
  final ApiServices api;
  final TextEditingController emailcontroller = TextEditingController();

  Future ForgetPassword() async {
    try {
      emit(ForgetPasswordloaded());

      final response = await api.post(
        EndPoint.forgetPassword, data: {
        "email": emailcontroller.text,
      });
      emit(ForgetPasswordseacsess(massage: 'Reset code sent to email'));
      return response;
    } on ServerException catch (e) {
      emit(ForgetPasswordfaliouer(
          errormassage: "There is no user with email address."));
    }
  }
}
