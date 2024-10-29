class myLostDate {
  bool? success;
  String? message;
  Data? data;

  myLostDate({this.success, this.message, this.data});

  myLostDate.fromJson(Map<String, dynamic> json) {
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
  List<String>? img;
  List<String>? publicId;
  String? address;
  int? age;
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
      this.publicId,
      this.address,
      this.age,
      this.email,
      this.phoneNumber,
      this.user,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'].cast<String>();
    publicId = json['publicId'].cast<String>();
    address = json['address'];
    age = json['age'];
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
    data['publicId'] = this.publicId;
    data['address'] = this.address;
    data['age'] = this.age;
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
