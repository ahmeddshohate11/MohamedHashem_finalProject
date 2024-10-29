import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduationproject/bloc/profile/cubit.dart';
import 'package:graduationproject/bloc/profile/state.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_cubit.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_state.dart';
import 'package:graduationproject/bloc/update_name_cubit/cubit.dart';
import 'package:graduationproject/bloc/update_name_cubit/state.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/update_name/edit_name.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/update_password/change_password.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_founded/your_found.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_losts/your_lost.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_matches/your_mathches.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpDateNameCubit, UpDateNameState>(
      listener: (context, state) {
        if (state is Profileseacsess) {
          print(state.profilemodel.username);
        } else if (state is Profilefaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" pleas Login agin ")));
        }
        if (state is lougoutseacsess) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/Rectangle 50.png",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 3.5,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                top: MediaQuery.of(context).size.height / 3.5,
                child: Image.asset(
                  "assets/images/Rectangle 9.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: MediaQuery.of(context).size.height / 18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: MediaQuery.of(context).size.height / 13,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    state is Profileseacsess
                        ? Text(
                            '${state.profilemodel.username}',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        : Text("name"),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => EditName()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/images/pen 7.png"),
                                    Text(
                                      "Edit profile name ",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Image.asset("assets/images/next 6.png"),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ChangePassword()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/images/pen 7.png"),
                                    Text(
                                      "change password  ",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Image.asset("assets/images/next 6.png"),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => YourLosts()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.list_rounded,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Show your losts   ",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Image.asset("assets/images/next 6.png"),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => YourFound()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.list_rounded,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Show your founds   ",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Image.asset("assets/images/next 6.png"),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => YourMatches()));
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.list_rounded,
                                      size: 30,
                                      color: Colors.blue,
                                    ),
                                    Text(
                                      "Show your matches ",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Image.asset("assets/images/next 6.png"),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                // context.read<UpDateNameCubit>().logout();
                                exit(0);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/images/log-out 1.png"),
                                    Text(
                                      "Log out ",
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.red),
                                    ),
                                    Image.asset(
                                      "assets/images/next 6.png",
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
      },
    );
  }
}
