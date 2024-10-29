import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/core/funaction.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_model.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_response.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';

part 'update_foundes_state.dart';

class UpdateFoundesCubit extends Cubit<UpdateFoundesState> {
  UpdateFoundesCubit(this.api) : super(UpdateFoundesInitial());

  ApiServices api;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phoneNumbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  File? foundpic;

  UploadeFileimage(File image) {
    foundpic = image;
    emit(uploadimagestate());
  }

  Myfoundes? mylostdata;

  Future updatemyfound(int index) async {
    try {
      emit(UpdateFoundesloaded());

      final response = await api.patch(
          "https://lostcal.onrender.com/api/lost/6682af9bdd7e63535755111d}",
          isFormData: true,
          data: {
            "email": emailcontroller.text,
            "name": namecontroller.text,
            "phoneNumber": "01270113526",
            "address": addresscontroller.text,
            ApiKeys.uploudimg: await uploadImageToAPI(foundpic!),
          });

      CacheHelper()
          .saveData(key: ApiKeys.idd, value: mylostdata?.result![index].id);
      emit(Updatefoundseacsess());
      return response;
    } on ServerException catch (e) {
      emit(Updatefoundfalouer(
          errormassage: "You are not login, Please login to get access"));
    }
  }
}
