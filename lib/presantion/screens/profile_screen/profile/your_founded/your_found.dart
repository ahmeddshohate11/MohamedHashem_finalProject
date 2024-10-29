import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/myfound/cubit/myfound_cubit.dart';
import 'package:graduationproject/presantion/screens/update_records/update_founded/form_update_found.dart';
import 'package:graduationproject/presantion/screens/update_records/update_founded/update_screen_found.dart';
import 'package:graduationproject/presantion/screens/update_records/update_losts/edit_pic.dart';

class YourFound extends StatelessWidget {
  const YourFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyfoundCubit, MyfoundState>(
      listener: (context, state) {
        if (state is deletesaucsess) {
          context.read<MyfoundCubit>().GetMyfound();
          Navigator.pop(context);
        } else if (state is Myfoundfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Please log in again.")));
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xFF151528),
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
                          color: Colors.white,
                          onPressed: () {
                            context.read<MyfoundCubit>().GetMyfound();
                          },
                          child: Text(
                            "Your founds",
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: state is Myfoundloaded
                          ? CircularProgressIndicator()
                          : state is Myfoundseacsess &&
                                  state.myfound.result != null
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    var item = state.myfound.result![index];
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        height: 130.h,
                                        width: 260.w,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 12, top: 10),
                                          child: Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    height: 130,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                        color: Colors.amber,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(80)),
                                                    child: Image.network(
                                                      item.img!,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Name: ${item.name}",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Address: ${item.address}",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Phone: ${item.phoneNumber}",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Email: ${item.email}",
                                                    style: TextStyle(
                                                        color: Colors.black),
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
                                                                            UpdatefoundScreen(
                                                                              itemes: state.myfound,
                                                                              id: state.myfound.result![index].id.toString(),
                                                                              index: index,
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
                                                                    .circular(
                                                                        50)),
                                                        child: MaterialButton(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          color:
                                                              Color(0xFF50C0E1),
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    MyfoundCubit>()
                                                                .deletemyfound();
                                                          },
                                                          child: Text(
                                                            "found",
                                                            style: TextStyle(
                                                                fontSize: 10.sp,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: state.myfound.result!.length)
                              : Container(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
