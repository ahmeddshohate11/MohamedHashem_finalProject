import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/add_person_cubit/state.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_cubit.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_state.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/add_person/costum_text_field.dart';

class FormAddPersone extends StatefulWidget {
  FormAddPersone({Key? key}) : super(key: key);

  @override
  State<FormAddPersone> createState() => _FormAddPersoneState();
}

class _FormAddPersoneState extends State<FormAddPersone> {
  final _globalelkey = GlobalKey<FormState>();
  bool iswrite = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindpersonCubit, FindpersonState>(
        listener: (context, state) {
      if (state is Findpersonsucsess) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("susccesssss")));
        Navigator.of(context).pop();
      } else if (state is Findpersonfaliouer) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("errrorrrrrrrrr")));
      }
    }, builder: (context, state) {
      return SingleChildScrollView(
        child: Form(
          key: _globalelkey,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.width / 7.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.black,
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter name lost person';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                  controller: context.read<FindpersonCubit>().nameController,
                  decoration: const InputDecoration(
                    prefixIcon:
                        Icon(Icons.person, color: Colors.blue, size: 40),
                    hintText: 'Enter name lost person',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.width / 7.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.black,
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter Address lost person';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                  controller: context.read<FindpersonCubit>().addressController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on_outlined,
                        color: Colors.blue, size: 40),
                    hintText: 'Enter Address lost person',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.width / 7.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.black,
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter contact email';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                  controller: context.read<FindpersonCubit>().emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.blue, size: 40),
                    hintText: 'Enter contact email',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.width / 7.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  color: Colors.black,
                ),
                child: TextFormField(
                  validator: (value) {
                    // You can define validation rules for the input field.
                    if (value!.isEmpty) {
                      return 'Please Enter contact phone';
                    }
                    return null; // Return null if the input is valid.
                  },
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                  controller:
                      context.read<FindpersonCubit>().phonenumberController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone, color: Colors.blue, size: 40),
                    hintText: 'Enter contact phone',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    hoverColor: Colors.white,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: const BorderSide(
                        color: Color(0XFF50C0E1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 150.w,
                child: state is Findpersonloaded
                    ? CircularProgressIndicator()
                    : MaterialButton(
                        onPressed: () {
                          if (_globalelkey.currentState!.validate()) {
                            context.read<FindpersonCubit>().Findperson();
                          }
                        },
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Color.fromARGB(255, 37, 224, 209),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Confirm ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
