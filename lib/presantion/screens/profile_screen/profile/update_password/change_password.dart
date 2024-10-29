import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/update_password/form_passwoed.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/Rectangle 50.png",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Update your password  ",
                          style:
                              TextStyle(color: Colors.white, fontSize: 30.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/Rectangle 9.png",
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width / 1,
                    ),
                    Positioned(
                      bottom: 20,
                      left: 50,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            Image.asset("assets/images/back.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "      Back to profile ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23.sp,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      left: 20,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.2,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(
                            color: Color(0XFF151528),
                            borderRadius: BorderRadius.circular(40)),
                        child: Column(
                          children: [
                            Image.asset("assets/images/padlock 3.png"),
                            Container(
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width / 1.2,
                                child: SingleChildScrollView(
                                    child: FormChangePassword())),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 24,
            right: 20,
            child: Image.asset(
              "assets/images/pass.png",
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1,
            ),
          ),
        ],
      ),
    ));
  }
}
