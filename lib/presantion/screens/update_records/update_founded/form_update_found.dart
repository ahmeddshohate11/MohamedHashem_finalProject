// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:graduationproject/bloc/update_founde_cubit/cubit/update_foundes_cubit.dart';
import 'package:graduationproject/bloc/update_requrds/cubit/update_requrdes_cubit.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_model.dart';
import 'package:graduationproject/data/model/myfound_model/myfound_response.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_founded/your_found.dart';

class FormUpdateFound extends StatefulWidget {
  final Myfoundes item;
  String id;
  final int index;
  FormUpdateFound({
    Key? key,
    required this.item,
    required this.id,
    required this.index,
  }) : super(key: key);

  @override
  State<FormUpdateFound> createState() => _FormUpdateFoundState();
}

class _FormUpdateFoundState extends State<FormUpdateFound> {
  final _globalKey = GlobalKey<FormState>();

  // late TextEditingController _nameController;
  // late TextEditingController _addressController;
  // late TextEditingController _phoneNumberController;
  // late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();

    // Find the specific entry by id
    final entry =
        widget.item.result!.firstWhere((element) => element.id == widget.id);

    context.read<UpdateFoundesCubit>().namecontroller =
        TextEditingController(text: entry.name);
    context.read<UpdateFoundesCubit>().addresscontroller =
        TextEditingController(text: entry.address);
    context.read<UpdateFoundesCubit>().phoneNumbercontroller =
        TextEditingController(text: entry.phoneNumber.toString());
    context.read<UpdateFoundesCubit>().emailcontroller =
        TextEditingController(text: entry.email);
  }

  @override
  void dispose() {
    context.read<UpdateFoundesCubit>().namecontroller.dispose();
    context.read<UpdateFoundesCubit>().phoneNumbercontroller.dispose();
    context.read<UpdateFoundesCubit>().addresscontroller.dispose();
    context.read<UpdateFoundesCubit>().emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateFoundesCubit, UpdateFoundesState>(
      listener: (context, state) {
        if (state is Updatefoundseacsess) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => YourFound()));
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Form(
                key: _globalKey,
                child: Column(
                  children: [
                    buildTextField(
                        "Name",
                        context.read<UpdateFoundesCubit>().namecontroller,
                        TextInputType.text),
                    buildTextField(
                        "Address",
                        context.read<UpdateFoundesCubit>().addresscontroller,
                        TextInputType.text),
                    buildTextField(
                        "Phone Number",
                        context
                            .read<UpdateFoundesCubit>()
                            .phoneNumbercontroller,
                        TextInputType.phone),
                    buildTextField(
                        "Email",
                        context.read<UpdateFoundesCubit>().emailcontroller,
                        TextInputType.emailAddress),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: MaterialButton(
                        onPressed: () {
                          if (_globalKey.currentState!.validate()) {
                            String updatedName = context
                                .read<UpdateFoundesCubit>()
                                .namecontroller
                                .text
                                .trim();
                            String updatedAddress = context
                                .read<UpdateFoundesCubit>()
                                .addresscontroller
                                .text
                                .trim();
                            String updatedPhoneNumber = context
                                .read<UpdateFoundesCubit>()
                                .phoneNumbercontroller
                                .text
                                .trim();
                            String updatedEmail = context
                                .read<UpdateFoundesCubit>()
                                .emailcontroller
                                .text
                                .trim();

                            // Handle update logic here
                          }
                        },
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Color(0xFF50C0E1),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<UpdateFoundesCubit>()
                                      .updatemyfound(widget.index);
                                },
                                child: state is UpdateFoundesloaded
                                    ? Text("Loaded")
                                    : Text(
                                        "Update",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildTextField(String label, TextEditingController controller,
      TextInputType keyboardType) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 3, color: Colors.blue),
              ),
              suffixIcon: GestureDetector(
                child: Image.asset("assets/images/pen 7.png"),
              ),
              contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 3, color: Colors.blue),
              ),
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
