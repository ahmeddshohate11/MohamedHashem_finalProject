import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/forget_password/cubit/forget_password_cubit.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/bloc/secret_code/cubit/secret_code_cubit.dart';
import 'package:graduationproject/presantion/screens/update_password/update_password_screen.dart';
import 'package:graduationproject/presantion/screens/user/user_screen.dart';

class SecretCode extends StatefulWidget {
  SecretCode({Key? key}) : super(key: key);

  @override
  State<SecretCode> createState() => _SecretCodeState();
}

final _globalekey = GlobalKey<FormState>();
bool _obscureText = true;

class _SecretCodeState extends State<SecretCode> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SecretCodeCubit, SecretCodeState>(
      listener: (context, state) {
        if (state is SecretCodeseacsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.massage)));
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => UpdatePasswordScreen()));
        } else if (state is SecretCodefaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Column(children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                      " Check your email , we send a secret code to you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'inder',
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          color: Color.fromARGB(255, 151, 132, 132))),
                ),
              ),
              SizedBox(height: 5.h),
              Form(
                  key: _globalekey,
                  child: Column(children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                        textAlign: TextAlign.left,
                        "Your code                                  ",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: Color(0x00000000ffE9E9E9))),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: TextFormField(
                        controller:
                            context.read<SecretCodeCubit>().codecontroller,
                        validator: (value) {
                          // You can define validation rules for the input field.
                          if (value!.isEmpty) {
                            return 'Enter a valid code';
                          }
                        },
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Type here',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.8,
                      child: MaterialButton(
                        onPressed: () {
                          if (_globalekey.currentState!.validate()) {
                            context.read<SecretCodeCubit>().Resetcode();
                          }
                        },
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              state is ForgetPasswordloaded
                                  ? Text("Loading.....")
                                  : Text("Submit",
                                      style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp,
                                          color: Color(0x00000000ffE9E9E9)))
                            ],
                          ),
                        ),
                      ),
                    )
                  ]))
            ]),
          ],
        );
      },
    );
  }
}
