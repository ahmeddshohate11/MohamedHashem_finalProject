import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:dio/dio.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/api_services/intercaptor.dart';
import 'package:graduationproject/data/errors/failuer.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';

import '../errors/server_excaption.dart';

class DioServices extends ApiServices {
  @override
  final Dio dio;

  DioServices(this.dio) {
    dio.options.baseUrl = EndPoint.baseurl;
    dio.interceptors.add(ApiInterseptor());

    dio.interceptors.add(LogInterceptor(
        error: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
  }

  @override
  Future delete(String path,
      {data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false}) async {
    try {
      var response = await dio.delete(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: quereyprameters);
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future patch(String path,
      {data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false}) async {
    try {
      var response = await dio.patch(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: quereyprameters);
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future get(String path,
      {dynamic data,
      Map<String, dynamic>? queryparametrs,
      bool isFormData = false}) async {
    try {
      var response = await dio.get(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryparametrs);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future post(String path,
      {dynamic data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false}) async {
    try {
      final response = await dio.post(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: quereyprameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future put(String path,
      {Object? data,
      Map<String, dynamic>? quereyprameters,
      bool isFormData = false}) async {
    try {
      final response =
          await dio.put(path, data: data, queryParameters: quereyprameters);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
