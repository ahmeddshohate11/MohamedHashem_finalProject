import 'package:graduationproject/data/api_services/end_pointes.dart';

class signupmodel {
  final String token;

  signupmodel({required this.token});

  factory signupmodel.fromJson(
    Map<String, dynamic> json,
  ) {
    return signupmodel(token: json[ApiKeys.token]);
  }
}

class signuperror {
  List<Errors>? errors;

  signuperror({this.errors});

  signuperror.fromJson(Map<String, dynamic> json) {
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors!.add(new Errors.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.errors != null) {
      data['errors'] = this.errors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Errors {
  String? type;
  String? value;
  String? msg;
  String? path;
  String? location;

  Errors({this.type, this.value, this.msg, this.path, this.location});

  Errors.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    value = json['value'];
    msg = json['msg'];
    path = json['path'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    data['msg'] = this.msg;
    data['path'] = this.path;
    data['location'] = this.location;
    return data;
  }
}
