// class ErrorSignup {
//   List<ErrorDetail> errors;

//   ErrorSignup({required this.errors});

//   factory ErrorSignup.fromJson(Map<String, dynamic> json) {
//     return ErrorSignup(
//       errors: (json['errors'] as List)
//           .map((e) => ErrorDetail.fromJson(e as Map<String, dynamic>))
//           .toList(),
//     );
//   }
// }

// class ErrorDetail {
//   String type;
//   String value;
//   String msg;
//   String path;
//   String location;

//   ErrorDetail({
//     required this.type,
//     required this.value,
//     required this.msg,
//     required this.path,
//     required this.location,
//   });

//   factory ErrorDetail.fromJson(Map<String, dynamic> json) {
//     return ErrorDetail(
//       type: json['type'] as String,
//       value: json['value'] as String,
//       msg: json['msg'] as String,
//       path: json['path'] as String,
//       location: json['location'] as String,
//     );
//   }
// }
