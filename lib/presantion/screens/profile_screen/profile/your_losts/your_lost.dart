import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_cubit.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_state.dart';
import 'package:graduationproject/bloc/search_cubit/cubit/search.dart';
import 'package:graduationproject/presantion/screens/update_records/update_losts/update_screen_lost.dart';

class YourLosts extends StatelessWidget {
  const YourLosts({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyLostCubit, MyLostState>(listener: (context, state) {
      if (state is MyLostseacsess) {
      } else if (state is MyLostfaliouer) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(" this name not found ")));
      }
    }, builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        color: Color(0xFF151528),
                        onPressed: () {
                          context.read<MyLostCubit>().GetMyLost();
                        },
                        child: Text(
                          "Your losts",
                          style:
                              TextStyle(fontSize: 24.sp, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 2),
                  child: state is MyLostloaded
                      ? CircularProgressIndicator()
                      : state is MyLostseacsess
                          ? ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF151528),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    height: 160.h,
                                    width: 260.w,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                Image.network(
                                                  (state.mylost.result![index]
                                                      .img![0]),
                                                  height: 80,
                                                  width: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                                Image.network(
                                                  (state.mylost.result![index]
                                                      .img![1]),
                                                  height: 80,
                                                  width: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Image.network(
                                                  (state.mylost.result![index]
                                                      .img![2]),
                                                  height: 80,
                                                  width: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                                Image.network(
                                                  (state.mylost.result![index]
                                                      .img![1]),
                                                  height: 80,
                                                  width: 50,
                                                  fit: BoxFit.fill,
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Name : ${state.mylost.result![index].name}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Addres :${state.mylost.result![index].address}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Phone : ${state.mylost.result![index].phoneNumber}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Email : ${state.mylost.result![index].email}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Age : ${state.mylost.result![index].age}",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        UpdateLostsScreen(
                                                                          mylost:
                                                                              state.mylost,
                                                                          id: state
                                                                              .mylost
                                                                              .result![index]
                                                                              .id
                                                                              .toString(), // Pass the id here
                                                                        )));
                                                      },
                                                      icon: Icon(
                                                        Icons
                                                            .mode_edit_outline_outlined,
                                                        color: Colors.blue,
                                                      )),
                                                  Container(
                                                    height: 26.h,
                                                    width: 60.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50)),
                                                    child: MaterialButton(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      color: Color(0xFF50C0E1),
                                                      onPressed: () {},
                                                      child: Text(
                                                        " found ",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: state.mylost.result!.length)
                          : Container(),
                )),
              ],
            ),
          ),
        ),
      );
    });
  }
}
