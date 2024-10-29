import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_founde_cubit/cubit/update_foundes_cubit.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_model.dart';

import 'package:graduationproject/presantion/screens/update_records/update_founded/edit_pic_found.dart';
import 'package:graduationproject/presantion/screens/update_records/update_founded/form_update_found.dart';
import 'package:image_picker/image_picker.dart';

class UpdatefoundScreen extends StatelessWidget {
  const UpdatefoundScreen({
    Key? key,
    required this.itemes,
    required this.id,
    required this.index,
  }) : super(key: key);

  final Myfoundes itemes;
  final String id;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<UpdateFoundesCubit, UpdateFoundesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            body: Stack(children: [
              Column(
                children: [
                  Center(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Color(0xFF151528),
                      onPressed: () {},
                      child: Text(
                        "Update records",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 60, bottom: 0, left: 0, right: 0),
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/Rectangle 0.png",
                          // height: 200,
                          fit: BoxFit.fill,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/images/Rectangle 53.png",
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.width / 2.2,
                            ),
                            Container(
                                height: MediaQuery.of(context).size.width / 2.9,
                                width: MediaQuery.of(context).size.width / 1.1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          child: context
                                                      .read<
                                                          UpdateFoundesCubit>()
                                                      .foundpic ==
                                                  null
                                              ? Image.network(
                                                  itemes.result![index].img!,
                                                  width: 100.w,
                                                  height: 80.h,
                                                  fit: BoxFit.fill,
                                                )
                                              : Image.file(
                                                  File(context
                                                      .read<
                                                          UpdateFoundesCubit>()
                                                      .foundpic!
                                                      .path),
                                                  width: 100.w,
                                                  height: 50.h,
                                                  fit: BoxFit.fill,
                                                ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Container(
                                        height: 40.h,
                                        width: 80.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: MaterialButton(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          color: const Color(0xFF50C0E1),
                                          onPressed: () async {
                                            ImagePicker()
                                                .pickImage(
                                                    source: ImageSource.gallery)
                                                .then((value) => context
                                                    .read<UpdateFoundesCubit>()
                                                    .UploadeFileimage(
                                                        File(value!.path)));
                                          },
                                          child: Text(
                                            "Edit",
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: FormUpdateFound(
                                id: id,
                                item: itemes,
                                index: index,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
