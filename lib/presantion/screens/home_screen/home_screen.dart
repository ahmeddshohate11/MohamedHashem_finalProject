import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/presantion/screens/add_person/add_persone.dart';
import 'package:graduationproject/presantion/screens/find_your_lost/find_home_screen.dart';
import 'package:graduationproject/presantion/screens/search_screen/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Color(0XFFC8C5CE),
        width: 800.w,
        child: Stack(children: [
          Image.asset(
            "assets/images/Rectangle 13 .png",
            fit: BoxFit.fill,
            height: 10,
            width: 100,
          ),
          Column(children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5.3,
                  width: MediaQuery.of(context).size.height / 1.3,
                  child: Stack(children: [
                    Positioned(
                      child: Image.asset(
                        "assets/images/Rectangle 1.png",
                        fit: BoxFit.fill,
                        height: 190,
                        width: MediaQuery.of(context).size.height / 1,
                      ),
                    ),
                    Column(children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 80, left: 60),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/colloer1.png",
                                      fit: BoxFit.fill,
                                      height: 90,
                                      width: 110,
                                    ),
                                    Image.asset(
                                      "assets/images/find1.png",
                                      fit: BoxFit.fill,
                                      height: 95,
                                      width: 120,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Center(
                                    child: Image.asset(
                                  "assets/images/image1.png",
                                  fit: BoxFit.fill,
                                  height: 110,
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ]),
                  ]),
                )
              ],
            ),
          ]),
          Positioned(
              top: MediaQuery.of(context).size.height / 7.4,
              right: 4,
              child: Image.asset("assets/images/stars 1.png")),
          Positioned(
              top: MediaQuery.of(context).size.height / 2.2,
              right: 2,
              child: Image.asset(
                "assets/images/suspect.png",
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.72,
              left: 15,
              bottom: 20,
              child: Image.asset(
                "assets/images/stars 2.png",
                width: 110,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height / 1.4,
              right: 30,
              child: Row(
                children: [
                  Image.asset("assets/images/child.png"),
                  //     Text("""          Find The Lost
                  //    SAVE
                  // The Day """,
                  //         style: TextStyle(
                  //             fontFamily: 'Inter',
                  //             fontWeight: FontWeight.w700,
                  //             fontSize: 20)),
                ],
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 4.1,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300.w,
                    height: 70.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FindHomeScren()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFF151528),
                          side: BorderSide(width: 3, color: Color(0XFF50C0E1)),
                          elevation: 3,
                          fixedSize: Size(230, 70)),
                      child: const Text(
                        'Find Your Own Lost',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 300.w,
                    height: 70.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AddPersone()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF151528),
                        side: BorderSide(width: 3, color: Color(0XFF50C0E1)),
                        elevation: 3,
                        fixedSize: Size(230, 70),
                      ),
                      child: const Text(
                        'Add the lost you found',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 300.w,
                    height: 70.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SearchScreenpage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF151528),
                        side: BorderSide(width: 3, color: Color(0XFF50C0E1)),
                        elevation: 3,
                        fixedSize: Size(240, 60),
                      ),
                      child: const Text(
                        'Search for lost people',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
