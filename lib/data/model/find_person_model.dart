class FindPersonmodel {
  bool? success;
  String? message;
  Data? data;

  FindPersonmodel({this.success, this.message, this.data});

  FindPersonmodel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? img;
  String? address;
  String? email;
  int? phoneNumber;
  String? user;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.name,
      this.img,
      this.address,
      this.email,
      this.phoneNumber,
      this.user,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    address = json['address'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    user = json['user'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['img'] = this.img;
    data['address'] = this.address;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['user'] = this.user;
    data['_id'] = this.sId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
