import 'package:flutter/foundation.dart';
import 'package:graduationproject/data/model/search_model/model.dart';

class SerachModel {
  List<Result>? result;

  SerachModel({this.result});

  SerachModel.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? name;
  int? age;
  String? address;
  int? phoneNumber;
  List<String>? images;

  Result({this.name, this.age, this.address, this.phoneNumber, this.images});

  Result.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    address = json['address'];
    phoneNumber = json['phoneNumber'];
    images = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['age'] = this.age;
    data['address'] = this.address;
    data['phoneNumber'] = this.phoneNumber;
    data['images'] = this.images;
    return data;
  }
}
