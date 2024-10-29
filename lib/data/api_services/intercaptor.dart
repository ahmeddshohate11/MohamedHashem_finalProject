import 'package:dio/dio.dart';
import 'package:graduationproject/data/api_services/end_pointes.dart';
import 'package:graduationproject/data/model/login_model.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';

class ApiInterseptor extends Interceptor {
  Loginmodel? userlogin;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Authorization'] =
        CacheHelper().getData(key: ApiKeys.token) != null
            ? 'Bearer ${CacheHelper().getData(key: ApiKeys.token)}'
            : null;
    super.onRequest(options, handler);
  }
}
