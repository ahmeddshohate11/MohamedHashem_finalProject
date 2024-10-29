import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:image_picker/image_picker.dart';

class Addimage extends StatelessWidget {
  Addimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddPersonCubit, AddPersonState>(
      listener: (context, state) {
        if (state is AddPersonsucsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("susccesssss")));
          // Navigator.of(context)
          //     .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        } else if (state is AddPersonfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("errrorrrrrrrrr")));
        }
      },
      builder: (context, state) {
        return GestureDetector(
            onTap: () {
              context.read<AddPersonCubit>().piclistimage();
            },
            child: Container(
              child: Image.asset("assets/images/image-gallery 1.png",
                  height: 100.h, width: 120.w, fit: BoxFit.contain),
            ));
      },
    );
  }
}

//  context.read<AddPersonCubit>().profilepic1 == null
//                   ? GestureDetector(
//                       onTap: () {
//                         context.read<AddPersonCubit>().picmorekimges();
//                       },
//                       child: Container(
//                         child: Image.asset("assets/images/image-gallery 1.png",
//                             height: 140.h, width: 160.w, fit: BoxFit.contain),
//                       ),
//                     )
//                   :
