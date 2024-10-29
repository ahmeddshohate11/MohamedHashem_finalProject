import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_requrds/cubit/update_requrdes_cubit.dart';
import 'package:graduationproject/data/model/mylost_model/mylost.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_losts/your_lost.dart';

class FormUpdateloster extends StatefulWidget {
  FormUpdateloster({
    Key? key,
    required this.mylost,
    required this.id,
  }) : super(key: key);

  final Mylost mylost;
  final String id;

  @override
  State<FormUpdateloster> createState() => _FormUpdatelosterState();
}

class _FormUpdatelosterState extends State<FormUpdateloster> {
  final _globalKey = GlobalKey<FormState>();

  // Controllers for telds to hold initial values
  // late TextEditingController _nameController;
  // late TextEditingController _addressController;
  // late TextEditingController _phoneNumberController;
  // late TextEditingController _emailController;
  // late TextEditingController _ageController;

  @override
  void initState() {
    super.initState();

    // Find the specific entry by id
    final entry =
        widget.mylost.result!.firstWhere((element) => element.id == widget.id);

    // Initialize controllers with initial values from the found entry
    context.read<UpdateRequrdesCubit>().namecontroller =
        TextEditingController(text: entry.name);
    context.read<UpdateRequrdesCubit>().addresscontroller =
        TextEditingController(text: entry.address);
    context.read<UpdateRequrdesCubit>().phoneNumbercontroller =
        TextEditingController(text: entry.phoneNumber.toString());
    context.read<UpdateRequrdesCubit>().emailcontroller =
        TextEditingController(text: entry.email);
    context.read<UpdateRequrdesCubit>().agecontroller =
        TextEditingController(text: entry.age.toString());
  }

  @override
  void dispose() {
    // Dispose controllers when not needed to avoid memory leaks
    context.read<UpdateRequrdesCubit>().namecontroller.dispose();
    context.read<UpdateRequrdesCubit>().addresscontroller.dispose();
    context.read<UpdateRequrdesCubit>().phoneNumbercontroller.dispose();
    context.read<UpdateRequrdesCubit>().emailcontroller.dispose();
    context.read<UpdateRequrdesCubit>().agecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateRequrdesCubit, UpdateRequrdesState>(
      listener: (context, state) {
        if (state is UpdateRequrdesseacsess) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => YourLosts()));
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
                        context.read<UpdateRequrdesCubit>().namecontroller,
                        TextInputType.text),
                    buildTextField(
                        "Address",
                        context.read<UpdateRequrdesCubit>().addresscontroller,
                        TextInputType.text),
                    buildTextField(
                        "Phone Number",
                        context
                            .read<UpdateRequrdesCubit>()
                            .phoneNumbercontroller,
                        TextInputType.phone),
                    buildTextField(
                        "Email",
                        context.read<UpdateRequrdesCubit>().emailcontroller,
                        TextInputType.emailAddress),
                    buildTextField(
                        "Age",
                        context.read<UpdateRequrdesCubit>().agecontroller,
                        TextInputType.number),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: MaterialButton(
                        onPressed: () {
                          if (_globalKey.currentState!.validate()) {
                            String updatedName = context
                                .read<UpdateRequrdesCubit>()
                                .namecontroller
                                .text
                                .trim();
                            String updatedAddress = context
                                .read<UpdateRequrdesCubit>()
                                .addresscontroller
                                .text
                                .trim();
                            String updatedPhoneNumber = context
                                .read<UpdateRequrdesCubit>()
                                .phoneNumbercontroller
                                .text
                                .trim();
                            String updatedEmail = context
                                .read<UpdateRequrdesCubit>()
                                .emailcontroller
                                .text
                                .trim();
                            int updatedAge = int.parse(context
                                .read<UpdateRequrdesCubit>()
                                .agecontroller
                                .text
                                .trim());

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
                                      .read<UpdateRequrdesCubit>()
                                      .uploadData(context
                                          .read<UpdateRequrdesCubit>()
                                          .pickedimages
                                          .map((e) => e!.path)
                                          .toList());
                                },
                                child: state is UpdateRequrdesloaded
                                    ? Text("loadedddd")
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
