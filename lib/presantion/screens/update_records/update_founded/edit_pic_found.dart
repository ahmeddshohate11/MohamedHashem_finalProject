// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:graduationproject/data/model/myfound_model/myfound_model.dart';
// import 'package:image_picker/image_picker.dart';

// class EditPicFound extends StatefulWidget {
//   final Myfoundes item;

//   const EditPicFound({Key? key, required this.item}) : super(key: key);

//   @override
//   _EditPicState createState() => _EditPicState();
// }

// class _EditPicState extends State<EditPicFound> {
 

//   Future<void> _pickImage() async {
//     final ImagePicker picker = ImagePicker();
//     final XFile? image = await picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       _image = image;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 5),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 10),
//             child: Container(
//               child: _image == null
//                   ? Image.network(
//                       widget.item.result![0].img!,
//                       width: 100.w,
//                       height: 50.h,
//                       fit: BoxFit.fill,
//                     )
//                   : Image.file(
//                       File(_image!.path),
//                       width: 100.w,
//                       height: 50.h,
//                       fit: BoxFit.fill,
//                     ),
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(0),
//           child: Container(
//             height: 40.h,
//             width: 60.w,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//             ),
//             child: MaterialButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               color: const Color(0xFF50C0E1),
//               onPressed: () async {
//                 _pickImage();
//               },
//               child: Text(
//                 "edit",
//                 style: TextStyle(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ));
//   }
// }
