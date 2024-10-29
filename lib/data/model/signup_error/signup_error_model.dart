class Signuperror {
  final String? type;
  final String? value;
  final String? msg;
  final String? path;
  final String? location;

  Signuperror({this.type, this.value, this.msg, this.path, this.location});

  factory Signuperror.fromJson(Map<String, dynamic> jsondata) {
    return Signuperror(
      msg: jsondata['msg'],
      location: jsondata['location'],
      path: jsondata['path'],
      type: jsondata['type'],
      value: jsondata['value'],
    );
  }
}
