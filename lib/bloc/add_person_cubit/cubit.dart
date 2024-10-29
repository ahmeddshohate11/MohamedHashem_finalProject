import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/errors/server_excaption.dart';

class AddPersonCubit extends Cubit<AddPersonState> {
  AddPersonCubit(
    this.api,
  ) : super(AddPersonInitial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final ApiServices api;
  List<XFile> pickedimages = [];
  Future<void> piclistimage() async {
    List<XFile> images = await ImagePicker().pickMultiImage();
    if (images != null) {
      pickedimages.addAll(images);
      emit(picimagesucsess());
    }
  }

  var dio = Dio();
  Future<void> uploadData({required List<String> imagepaths}) async {
    FormData formData = FormData();
    // Add images to FormData
    for (var file in imagepaths) {
      formData.files.add(MapEntry(
          'img',
          await MultipartFile.fromFile(file,
              contentType: MediaType("image", "jpeg"))));
    }
    // Add other parameters to FormData
    formData.fields.addAll([
      MapEntry(ApiKeys.email, emailController.text),
      MapEntry(ApiKeys.name, nameController.text),
      MapEntry(ApiKeys.phoneNumber, phonenumberController.text),
      MapEntry(ApiKeys.age, ageController.text),
      MapEntry(ApiKeys.address, addressController.text),
    ]);

    var headers = {
      'Authorization': 'Bearer ${CacheHelper().getData(key: ApiKeys.token)}',
    };

    dio.interceptors.add(LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));

    // Add headers to Dio instance
    dio.options.headers.addAll(headers);

    // Make POST request
    try {
      emit(AddPersonloaded());

      Response response = await dio.post(
          "https://lostcal.onrender.com/Api/mylost",
          data: formData,
          options: Options(contentType: 'multipart/form-data'));

      emit(AddPersonsucsess());
      return response.data;
    } on ServerException catch (e) {
      emit(AddPersonfaliouer(errormassage: e.errorModel.message));
    }
  }
}
