import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

part 'secret_code_state.dart';

class SecretCodeCubit extends Cubit<SecretCodeState> {
  SecretCodeCubit(this.api) : super(SecretCodeInitial());
  final ApiServices api;
  final TextEditingController codecontroller = TextEditingController();

  Future Resetcode() async {
    try {
      emit(SecretCodeloaded());

      final response = await api.post(EndPoint.resetcode, data: {
        "resetCode": codecontroller.text,
      });
      emit(SecretCodeseacsess(massage: 'update your password'));
      return response;
    } on ServerException catch (e) {
      emit(SecretCodefaliouer(errormassage: "Reset code invalid or expired"));
    }
  }
}
