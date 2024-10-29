import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_state.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_widgets/form_login.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_widgets/new_sumbit.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Stack(children: [
                  Image.asset("assets/images/Ellipse 19.png"),
                  Container(
                    margin: EdgeInsets.all(20.w),
                    child: Text(
                      "Log in ",
                      style: TextStyle(
                        color: Color(0x00000000ffFFFFFF),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 45.sp,
                      ),
                    ),
                  )
                ])),
            Positioned(
                top: MediaQuery.of(context).size.height / 3.5,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Ellipse 18.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.8,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Ellipse 17.png",
                  fit: BoxFit.cover,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.3,
                right: 0,
                left: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/Ellipse 16.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ])),
            Positioned(
                top: 20.h,
                right: 5,
                left: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset(
                  "assets/images/remove 1.png",
                  fit: BoxFit.fill,
                  width: 200,
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.25,
              left: 80,
              child: Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.fill,
                height: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.8),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // SizedBox(
                      //     height: 100.h,
                      //     child: Image.asset("assets/images/image1.png")),
                      FormLogin(),
                      // TextButton(
                      //   onPressed: () {
                      //     Navigator.of(context).push(MaterialPageRoute(
                      //         builder: (context) => SignUpScreen()));
                      //   },
                      //   child: Text(
                      //     "Or Go SignUP",
                      //     style: TextStyle(fontSize: 15, color: Colors.white),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
