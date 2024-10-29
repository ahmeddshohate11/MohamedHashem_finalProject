import 'dart:io';
import 'package:http_parser/http_parser.dart';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

Future uploadImageToAPI(File image) async {
  return MultipartFile.fromFileSync(
    image.path,
    filename: image.path.split('/').last,
    contentType: MediaType("image", "jpeg"),
  );
}

Future uploadImageToAPI1(File image) async {
  return MultipartFile.fromFileSync(
    image.path,
    filename: image.path.split('/').last,
    contentType: MediaType("image", "jpeg"),
  );
}

Future uploadImageToAPI2(File image) async {
  return MultipartFile.fromFileSync(
    image.path,
    filename: image.path.split('/').last,
    contentType: MediaType("image", "jpeg"),
  );
}

Future uploadlistimages(List<XFile> imagepaths) async {
  FormData formData = FormData();
  for (var files in imagepaths) {
    formData.files
        .add(MapEntry("img", await MultipartFile.fromFile(files.path)));
  }
}

// Future uploadmoreImageToAPI(List<> imagepaths) async {
//   FormData formdata = FormData();
//   return MultipartFile.fromFile(
//     imagepaths.map((e) => e.path).toList());
// }
Future uploadimges(List<File>? imageFileList) async {
  final uploadList = <MultipartFile>[];

  for (final imageFiles in imageFileList!) {
    uploadList.add(
      await MultipartFile.fromFile(
        imageFiles.path,
        filename: imageFiles.path.split('/').last,
        contentType: MediaType('image', 'jpg'),
      ),
    );
  }
}
