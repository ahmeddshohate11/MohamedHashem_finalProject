import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';

part 'update_requrdes_state.dart';

class UpdateRequrdesCubit extends Cubit<UpdateRequrdesState> {
  UpdateRequrdesCubit(this.api) : super(UpdateRequrdesInitial());
  ApiServices api;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phoneNumbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();

  List<XFile?> pickedimages = [];

  bool _isImagePickerActive = false;

  bool get isImagePickerActive => _isImagePickerActive;

  void setImagePickerActive(bool value) {
    _isImagePickerActive = value;
    emit(UpdateRequrdesUpdated());
  }

  void updateRequrdesLost(int index) async {
    List<XFile> images = await ImagePicker().pickMultiImage();
    if (images != null) {
      pickedimages.addAll(images);
      emit(UpdateRequrdesUpdated());
    }
  }

  var dio = Dio();

  Future<void> uploadData(List<String> imagesList) async {
    FormData formData = FormData();

    // دمج pickedimages و imagesList في قائمة واحدة

    // إضافة الصور إلى FormData بنفس المفتاح 'img'
    for (var file in imagesList) {
      formData.files.add(MapEntry(
        'img', // استخدام نفس المفتاح لكل صورة
        await MultipartFile.fromFile(file,
            contentType: MediaType("image", "jpeg")),
      ));
    }

    // إضافة المعلمات الأخرى إلى FormData
    formData.fields.addAll([
      MapEntry(ApiKeys.email, emailcontroller.text),
      MapEntry(ApiKeys.name, namecontroller.text),
      MapEntry(ApiKeys.phoneNumber, "01270113264"),
      MapEntry(ApiKeys.age, agecontroller.text),
      MapEntry(ApiKeys.address, addresscontroller.text),
    ]);

    var headers = {
      'Authorization': 'Bearer ${CacheHelper().getData(key: ApiKeys.token)}',
    };

    dio.options.headers.addAll(headers);

    // طباعة لتصحيح الأخطاء
    print('Uploading data with fields: ${formData.fields}');
    print(
        'Uploading data with files: ${formData.files.map((file) => file.key).toList()}');

    // إجراء طلب POST
    try {
      emit(UpdateRequrdesloaded());

      final response = await dio.patch(
        "https://lostcal.onrender.com/api/mylost/66805999f952eb78fef1a0f3",
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );

      print('Response status: ${response.statusCode}');
      print('Response data: ${response.data}');

      if (response.statusCode == 200) {
        emit(UpdateRequrdesseacsess());
      } else {
        emit(UpdateRequrdesfaliouer(errormassage: "Failed to upload data"));
      }
    } on DioError catch (e) {
      print('DioError: ${e.response?.data}');
      emit(UpdateRequrdesfaliouer(errormassage: "DioError: ${e.message}"));
    } catch (e) {
      print('Unknown error: $e');
      emit(UpdateRequrdesfaliouer(errormassage: "Unknown error: $e"));
    }
  }
}
