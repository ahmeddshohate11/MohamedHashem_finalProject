import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/signup_error/list_error.dart';
import 'package:graduationproject/data/model/signup_model.dart';
import 'package:graduationproject/data/model/signup_model/signup_suacess.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(
    this.api,
  ) : super(SignupInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confarmepasController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiServices api;
  signupmodel? usersignup;
  Future Signup() async {
    try {
      emit(signuploaded());
      final response = await api.post(EndPoint.signupurl, data: {
        ApiKeys.username: nameController.text,
        ApiKeys.email: emailController.text,
        ApiKeys.password: passwordController.text,
        ApiKeys.passwordConfirm: confarmepasController.text
      });

      usersignup = signupmodel.fromJson(response);
      final mytoken = JwtDecoder.decode(usersignup!.token);
      CacheHelper().saveData(key: ApiKeys.token, value: usersignup!.token);
      CacheHelper().saveData(key: ApiKeys.id, value: mytoken[ApiKeys.id]);

      emit(SignupSucsess(listsignup: SignupSuacsess.fromJson(response)));
      return response;
    } on ServerException catch (e) {
      emit(Signupfaliouer(errormassage: e.errorsignp.errors[0]));
    }
  }
}
