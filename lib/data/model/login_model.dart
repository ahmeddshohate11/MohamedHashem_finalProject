import 'package:graduationproject/data/api_services/end_pointes.dart';

class Loginmodel {
  final String token;

  Loginmodel({required this.token});

  factory Loginmodel.fromJson(
    Map<String, dynamic> json,
  ) {
    return Loginmodel(token: json[ApiKeys.token]);
  }
}
