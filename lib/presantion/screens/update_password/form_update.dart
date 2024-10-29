import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/bloc/reset_password/cubit/reset_password_cubit.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/user/user_screen.dart';

class FormUpdatePassword extends StatefulWidget {
  FormUpdatePassword({Key? key}) : super(key: key);

  @override
  State<FormUpdatePassword> createState() => _FormUpdatePasswordState();
}

class _FormUpdatePasswordState extends State<FormUpdatePassword> {
  final _globalekey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordseacsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.massage)));
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        } else if (state is ResetPasswordfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Form(
                key: _globalekey,
                child: Column(children: [
                  Text(
                    "Email                                          ",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Color(0x00000000ffE9E9E9)),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      controller:
                          context.read<ResetPasswordCubit>().emailcontroller,
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null; // Return null if the input is valid.
                      },
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'email',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "New password                           ",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Color(0x00000000ffE9E9E9)),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      controller:
                          context.read<ResetPasswordCubit>().passwordcontroller,
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null; // Return null if the input is valid.
                      },
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'password',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    "Confirm password                      ",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        color: Color(0x00000000ffE9E9E9)),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: TextFormField(
                      controller: context
                          .read<ResetPasswordCubit>()
                          .confarmpasscontroller,
                      validator: (value) {
                        // You can define validation rules for the input field.
                        if (value!.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null; // Return null if the input is valid.
                      },
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(10, 2, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: ' confirm password',
                        labelStyle: TextStyle(color: Colors.white),
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
                          context.read<ResetPasswordCubit>().Resetnewpasss();
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
                            state is ResetPasswordloaded
                                ? Text(
                                    "LOADEEING.....",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                : Text(
                                    "Change password",
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18.sp,
                                        color: Color(0x00000000ffE9E9E9)),
                                  )
                          ],
                        ),
                      ),
                    ),
                  )
                ])),
          ],
        );
      },
    );
  }
}
