import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';
import 'package:graduationproject/presantion/screens/splash_screen/splash_widgets/buttom_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/image2.png",
                      fit: BoxFit.fill)),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height / 7.5,
                right: 40,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/colloer5.png",
                          width: 220, fit: BoxFit.fill),
                    ],
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 3.14,
                left: 100,
                child: Text(" Find The Lost",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ))),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.8,
                left: 100,
                child: Text("        SAVE",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ))),
            Positioned(
                top: MediaQuery.of(context).size.height / 2.5,
                left: 100,
                child: Text("      The Day  ",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ))),
            Positioned(
                right: 0,
                top: MediaQuery.of(context).size.height / 2.9,
                child: Image.asset(
                  "assets/images/suspect1.png",
                  width: 100,
                )),
            Positioned(
              top: MediaQuery.of(context).size.height / 2.2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/Ellipse 5.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 75,
                      child: Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "assets/images/Ellipse 4.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 57,
                          left: 5,
                          child: Image.asset(
                            "assets/images/grob3.png",
                            fit: BoxFit.cover,
                            height: 130,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 140,
                          child: Image.asset(
                            "assets/images/Group 1.png",
                            fit: BoxFit.cover,
                            height: 130,
                          ),
                        ),
                        Positioned(
                          top: 58,
                          left: 260,
                          child: Image.asset(
                            "assets/images/Group 3.png",
                            fit: BoxFit.cover,
                            height: 90,
                          ),
                        ),
                        Positioned(
                          top: 61,
                          left: 300,
                          child: Image.asset(
                            "assets/images/grob4.png",
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                      ]),
                    ),
                    Positioned(
                      top: 190,
                      child: Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            "assets/images/Ellipse 1.png",
                            fit: BoxFit.fill,
                            height: MediaQuery.of(context).size.width / 1.5,
                          ),
                        ),
                        const ButtomSplash()
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
