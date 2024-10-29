import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_requrds/cubit/update_requrdes_cubit.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';
import 'package:image_picker/image_picker.dart';

class EditPic extends StatefulWidget {
  const EditPic({
    Key? key,
    required this.mylost,
    required this.imagesList,
  }) : super(key: key);

  final Mylost mylost;
  final List<String> imagesList;

  @override
  _EditPicState createState() => _EditPicState();
}

class _EditPicState extends State<EditPic> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UpdateRequrdesCubit>();

    return BlocBuilder<UpdateRequrdesCubit, UpdateRequrdesState>(
      builder: (context, state) {
        final pickedImages = cubit.pickedimages;

        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(widget.imagesList.length, (index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: GestureDetector(
                      onTap: () {
                        if (widget.imagesList.length > 0) {
                          // Navigate or perform action with widget.imagesList[index]
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          child: (pickedImages.length > index &&
                                  pickedImages[index] != null)
                              ? Image(
                                  image: FileImage(
                                      File(pickedImages[index]!.path)),
                                  width: 100.w,
                                  height: 40.h,
                                  fit: BoxFit.fill,
                                )
                              : Image.network(
                                  widget.imagesList.length > index
                                      ? widget.imagesList[index]
                                      : "",
                                  width: 70.w,
                                  height: 35.h,
                                  fit: BoxFit.contain,
                                ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      height: 25.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: const Color(0xFF50C0E1),
                        onPressed: () async {
                          if (cubit.isImagePickerActive) return;

                          cubit.setImagePickerActive(true);

                          try {
                            if (pickedImages != null) {
                              cubit.updateRequrdesLost(index);
                            }
                          } finally {
                            cubit.setImagePickerActive(false);
                          }
                        },
                        child: Text(
                          "edit",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        );
      },
    );
  }
}
