import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0XFFC8C5CE),
          width: 700.w,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: MediaQuery.of(context).size.height / 2,
                right: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/Rectangle 16.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: -10,
                  left: 30,
                  right: 30,
                  child: Image.asset(
                    "assets/images/WhatsApp%252520Image%2525202023-10-07%252520at%25252011.03%2525203.png",
                    fit: BoxFit.fitHeight,
                    width: 600,
                  )),
              Positioned(
                top: 30,
                left: 14,
                right: 14,
                child: Image.asset(
                  "assets/images/lovepik-splash-material-png-image_401251142_wh1200 (1) 1.png",
                ),
              ),
              Positioned(
                right: 20,
                top: 160,
                child: Image.asset("assets/images/search 1.png"),
              ),
              Positioned(
                  right: 70,
                  top: 280,
                  child: Image.asset("assets/images/question (1) 1.png")),
              Positioned(
                  top: 227,
                  left: 40,
                  child: Image.asset("assets/images/instagram 1 (4).png")),
              Positioned(
                  top: 217,
                  left: 100,
                  child: Image.asset(
                      "assets/images/facebook-app-symbol 1 (5).png")),
              Positioned(
                left: 0,
                top: 370,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 50),
                              child: Image.asset(
                                "assets/images/Ellipse 22 (1).png",
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                "assets/images/Line 4.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "App and website help you to find lost people by",
                              //  textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "computer vision with cameras and authors then",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "send to you all information about the lost .",
                              //textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 283,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 30),
                              child: Image.asset(
                                "assets/images/Ellipse 22 (1).png",
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                "assets/images/Line 4.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "We seek to expand the surveillance network",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "to all countries                                                ",
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 215,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/images/Ellipse 22 (1).png",
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                "assets/images/Line 4.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            Text(
                              "Find The Lost , SAVE The Day",
                              //  textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 130,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Image.asset(
                                "assets/images/Ellipse 22 (1).png",
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: Image.asset(
                                "assets/images/Line 4.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "For any inquires call us  01234572284",
                              // textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -10,
                left: 10,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/undraw_Faq_re_31cw-removebg-preview 1 (4).png",
                        ),
                        // SizedBox(
                        //   width: 40,
                        // ),
                        // Image.asset(
                        //     "assets/images/undraw_Online_information_re_erks-removebg-preview 1 (1).png"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
