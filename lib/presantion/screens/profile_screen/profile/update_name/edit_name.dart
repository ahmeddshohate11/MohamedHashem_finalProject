import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_name_cubit/cubit.dart';
import 'package:graduationproject/bloc/update_name_cubit/state.dart';

class EditName extends StatelessWidget {
  const EditName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpDateNameCubit, UpDateNameState>(
      listener: (context, state) {
        if (state is UpDateNameseacsess) {
          context.read<UpDateNameCubit>().GitProfile();
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(" updated username sucessfully")));
          Navigator.of(context).pop();
        } else if (state is UpDateNamefaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }
      },
      builder: (context, state) {
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
                        height: MediaQuery.of(context).size.height / 3.1,
                        width: MediaQuery.of(context).size.width / 1,
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Update your name ",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 40,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
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
                                    "         Back to profile ",
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 30,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            )),
                        Positioned(
                          top: 20,
                          right: 20,
                          left: 20,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2.6,
                            width: MediaQuery.of(context).size.width / 1,
                            decoration: BoxDecoration(
                                color: Color(0XFF151528),
                                borderRadius: BorderRadius.circular(40)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset("assets/images/pen 8.png"),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.3,
                                  height: 40.h,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff151528),
                                  ),
                                  child: TextField(
                                    controller: context
                                        .read<UpDateNameCubit>()
                                        .usernamecontroller,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xff151528),
                                        ),
                                      ),
                                      hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white),
                                      hintText: "Enter new name ",
                                      prefixIcon: Icon(
                                        Icons.person_3,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 22, 165, 248),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 22, 165, 248),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 170.w,
                                  child: MaterialButton(
                                    onPressed: () {
                                      context
                                          .read<UpDateNameCubit>()
                                          .ChangeName();
                                    },
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    color: Color(0xff50C0E1),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          state is UpDateNameloaded
                                              ? Text("Waite...")
                                              : Text(
                                                  "Update ",
                                                  style: TextStyle(
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 22,
                                                      color: Colors.white),
                                                )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                  "assets/images/name.png",
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
            ],
          ),
        ));
      },
    );
  }
}
