class Profile {
  String? username;
  String? email;
  String? sId;

  Profile({this.username, this.email, this.sId});

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
        email: json['email'], username: json['username'], sId: json['sId']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['_id'] = this.sId;
    return data;
  }
}
