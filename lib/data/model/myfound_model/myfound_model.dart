class Myfoundes {
  List<Result>? result;

  Myfoundes({this.result});

  Myfoundes.fromJson(Map<String, dynamic> json) {
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
  String? address;
  String? img;
  int? phoneNumber;
  String? email;
  String? id;

  Result(
      {this.name,
      this.address,
      this.img,
      this.phoneNumber,
      this.email,
      this.id});

  Result.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    img = json['img'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['img'] = this.img;
    data['phoneNumber'] = this.phoneNumber;
    data['email'] = this.email;
    data['id'] = this.id;
    return data;
  }
}
