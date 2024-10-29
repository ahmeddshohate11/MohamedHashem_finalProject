class ALLMatches {
  List<AllMatches>? allMatches;

  ALLMatches({this.allMatches});

  ALLMatches.fromJson(Map<String, dynamic> json) {
    if (json['allMatches'] != null) {
      allMatches = <AllMatches>[];
      json['allMatches'].forEach((v) {
        allMatches!.add(AllMatches.fromJson(v));
      });
    } else {
      print('Error: allMatches key is missing or null in the JSON data');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.allMatches != null) {
      data['allMatches'] = this.allMatches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllMatches {
  String? sId;
  String? name;
  List<String>? img;
  List<String>? publicId;
  String? address;
  int? age;
  String? email;
  int? phoneNumber;
  String? user;
  String? createdAt;
  String? updatedAt;
  int? iV;

  AllMatches(
      {this.sId,
      this.name,
      this.img,
      this.publicId,
      this.address,
      this.age,
      this.email,
      this.phoneNumber,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.iV});

  AllMatches.fromJson(Map<String, dynamic> json) {
    try {
      sId = json['_id'];
      name = json['name'];
      img = json['img'] != null ? List<String>.from(json['img']) : null;
      publicId =
          json['publicId'] != null ? List<String>.from(json['publicId']) : null;
      address = json['address'];
      age = json['age'];
      email = json['email'];
      phoneNumber = json['phoneNumber'];
      user = json['user'];
      createdAt = json['createdAt'];
      updatedAt = json['updatedAt'];
      iV = json['__v'];
    } catch (e) {
      print('Error parsing AllMatches from JSON: $e');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['img'] = this.img;
    data['publicId'] = this.publicId;
    data['address'] = this.address;
    data['age'] = this.age;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['user'] = this.user;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
