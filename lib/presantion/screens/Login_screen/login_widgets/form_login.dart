import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/presantion/buttom_navigation/buttom_navigation.dart';
import 'package:graduationproject/presantion/screens/forgot_password/forgot_password.dart';
import 'package:graduationproject/presantion/screens/info_screen/info_screen.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';
import 'package:graduationproject/presantion/screens/user/user_screen.dart';

class FormLogin extends StatefulWidget {
  FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _globalekey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Loginsucsess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" التسجيل بنجاح")));
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => BottomNavBarscreen()));
        } else if (state is Loginfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }

        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            Column(children: [
              Text(
                "  Email                                ",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Color(0x00000000ffE9E9E9),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5.h),
              Form(
                  key: _globalekey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: MediaQuery.of(context).size.width / 7,
                        child: TextFormField(
                          controller:
                              context.read<LoginCubit>().emailcontroller,
                          validator: (value) {
                            // You can define validation rules for the input field.
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null; // Return null if the input is valid.
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'email',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        "Password                     ",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Color(0x00000000ffE9E9E9),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: MediaQuery.of(context).size.width / 7,
                        child: TextFormField(
                          controller:
                              context.read<LoginCubit>().pasworrdcontroller,
                          validator: (value) {
                            // You can define validation rules for the input field.
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null; // Return null if the input is valid.
                          },
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.white),
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              child: Icon(_obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen()),
                            );
                          },
                          child: Text(
                            "           Forget password ?                        ",
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 155, 149, 149),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: state is Loginloaded
                            ? CircularProgressIndicator()
                            : MaterialButton(
                                onPressed: () {
                                  if (_globalekey.currentState!.validate()) {
                                    context.read<LoginCubit>().login();
                                  }
                                },
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                color: Colors.blue,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Log in",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.sp,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      )
                    ],
                  ))
            ]),
          ],
        );
      },
    );
  }
}
