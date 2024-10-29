import 'package:dio/dio.dart';

abstract class failuer {
  final String errormassage;

  failuer(this.errormassage);
}

class websrvicefailuer extends failuer {
  websrvicefailuer(super.errormassage);

  factory websrvicefailuer.FromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return websrvicefailuer("Connection time Out");
      case DioExceptionType.sendTimeout:
        return websrvicefailuer("send Time out");
      case DioExceptionType.receiveTimeout:
        return websrvicefailuer("Receive Time out");
      case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      case DioExceptionType.badResponse:
        return websrvicefailuer.FromResponse(
            dioerror.response!.statusCode, dioerror.response!.data);
      case DioExceptionType.cancel:
      // TODO: Handle this case.
      case DioExceptionType.connectionError:
        return websrvicefailuer("Connetion is falle please try later");
      case DioExceptionType.unknown:
        if (dioerror.message!.contains('SocketException')) {
          return websrvicefailuer("no internet");
        }
        return websrvicefailuer("unxapted error ,plesa try agane");
      default:
        return websrvicefailuer("opps there was error ,plesa try agane");
    }
  }
  // ignore: non_constant_identifier_names
  factory websrvicefailuer.FromResponse(dynamic statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return websrvicefailuer(response['error']['massage']);
    } else if (statusCode == 404) {
      return websrvicefailuer("your requste is not found ,plesa try agane");
    } else if (statusCode == 500) {
      return websrvicefailuer("Internal servar error ,plesa try agane");
    } else {
      return websrvicefailuer("opps there was error ,plesa try agane");
    }
  }
}
