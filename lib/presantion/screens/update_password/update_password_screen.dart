import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_widgets/form_login.dart';
import 'package:graduationproject/presantion/screens/update_password/form_update.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({Key? key}) : super(key: key);

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
                    margin: EdgeInsets.all(10.w),
                    child: Column(
                      children: [
                        Text(
                          "Update",
                          style: TextStyle(
                              color: Color(0x00000000ffFFFFFF),
                              fontSize: 38.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0x00000000ffFFFFFF),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
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
                top: 10.h,
                right: 0,
                left: MediaQuery.of(context).size.width / 2.1,
                child: Image.asset(
                  "assets/images/123.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3,
                )),
            Positioned(
                top: MediaQuery.of(context).size.width / 1,
                right: 100,
                child: Image.asset(
                  "assets/images/image1.png",
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.9),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      FormUpdatePassword(),
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
