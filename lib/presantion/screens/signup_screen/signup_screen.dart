import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/signup_screen/form_signup.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              top: 0,
              left: 0,
              child: Stack(children: [
                Image.asset("assets/images/Ellipse 19.png"),
                Container(
                  margin: EdgeInsets.all(17.w),
                  child: Text(
                    "Sign up ",
                    style: TextStyle(
                      color: Color(0x00000000ffFFFFFF),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 40.sp,
                    ),
                  ),
                )
              ])),
          Positioned(
              top: 17.h,
              right: 20,
              child: Image.asset(
                "assets/images/remove2.png",
                height: 270,
                fit: BoxFit.fill,
              )),
          Stack(children: [
            Positioned(
                top: MediaQuery.of(context).size.height / 3.6,
                right: 0,
                left: 0,
                child: Stack(children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/Ellipse 16.png",
                      height: MediaQuery.of(context).size.height * .70,
                      fit: BoxFit.cover,
                    ),
                  ),
                ])),
            Positioned(
              top: MediaQuery.of(context).size.height / 3.4,
              left: 82,
              child: Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.fill,
                height: 110,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.6),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Image.asset(
                      //   "assets/images/image1.png",
                      //   fit: BoxFit.fill,
                      // ),
                      FormSiginup(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        },
                        child: Text(
                          "Or Have an Account",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
