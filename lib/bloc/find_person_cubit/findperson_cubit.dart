import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_state.dart';
import 'package:graduationproject/core/funaction.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/find_person_model.dart';
import 'package:image_picker/image_picker.dart';

class FindpersonCubit extends Cubit<FindpersonState> {
  FindpersonCubit(this.api) : super(FindpersonInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final ApiServices api;

  File? profilepic;
  UploadeFileimage(File image) {
    profilepic = image;
    emit(uploadimagestate());
  }

  FindPersonmodel? findPersonmodel;
  Findperson() async {
    try {
      emit(Findpersonloaded());
      final response = await api.post("https://lostcal.onrender.com/Api/lost",
          isFormData: true,
          data: {
            "email": emailController.text,
            "name": nameController.text,
            "phoneNumber": phonenumberController.text,
            "address": addressController.text,
            ApiKeys.uploudimg: await uploadImageToAPI(profilepic!),
          });
      emit(Findpersonsucsess(message: "SACSESSS"));
      return response.data;
    } on ServerException catch (e) {
      // emit(Findpersonfaliouer(errormassage: e.findpersonerror.errors![0].msg!));
    }
  }
}
