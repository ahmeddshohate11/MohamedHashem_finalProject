import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_cubit.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_state.dart';
import 'package:image_picker/image_picker.dart';

class uploadimage extends StatelessWidget {
  const uploadimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindpersonCubit, FindpersonState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              ImagePicker().pickImage(source: ImageSource.gallery).then(
                  (value) => context
                      .read<FindpersonCubit>()
                      .UploadeFileimage(File(value!.path)));
            },
            child: context.read<FindpersonCubit>().profilepic == null
                ? Image.asset(
                    "assets/images/image-gallery 1.png",
                    fit: BoxFit.cover,
                    width: 100.w,
                    height: 100,
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      child: Image(
                          image: FileImage(File(context
                              .read<FindpersonCubit>()
                              .profilepic!
                              .path)),
                          width: 120.w,
                          height: 90.h,
                          fit: BoxFit.fill),
                    ),
                  ),
          );
        });
  }
}
