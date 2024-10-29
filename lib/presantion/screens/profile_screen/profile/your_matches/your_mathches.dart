import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/matches/cubit/matches_cubit.dart';
import 'package:graduationproject/data/model/all_matches_model/all_matches.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_matches/widget_photo.dart';

class YourMatches extends StatelessWidget {
  const YourMatches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MatchesCubit, MatchesState>(
      listener: (context, state) {
        if (state is matchesfaliouer) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Matches not found")),
          );
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 3.2,
                  width: MediaQuery.of(context).size.width,
                  child:
                      upermathces(), // Ensure this widget exists and is correctly implemented
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Color(0xFF50C0E1),
                  onPressed: () {
                    context.read<MatchesCubit>().Gitallmatches();
                  },
                  child: state is matchesloaded
                      ? Text(
                          "Wait",
                          style:
                              TextStyle(fontSize: 20.sp, color: Colors.white),
                        )
                      : Text(
                          "Matches",
                          style:
                              TextStyle(fontSize: 20.sp, color: Colors.white),
                        ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: state is mathcesseacsess
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final match =
                                  state.listmatches.allMatches![index];
                              return Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, bottom: 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFF151528),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  height: 140.h,
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          if (match.img != null &&
                                              match.img!.isNotEmpty)
                                            Image.network(
                                              match.img![0],
                                              fit: BoxFit.fill,
                                              height: 130.h,
                                              width: 70.w,
                                            ),
                                          if (match.img != null &&
                                              match.img!.length > 1)
                                            Image.network(
                                              match.img![1],
                                              fit: BoxFit.fill,
                                              height: 130.h,
                                              width: 70.w,
                                            ),
                                        ],
                                      ),
                                      SizedBox(width: 10.h),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 10.h),
                                          Text(
                                            "Name: ${match.name ?? 'N/A'}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "Address: ${match.address}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "Phone: ${match.phoneNumber?.toString() ?? 'N/A'}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(height: 5.h),
                                          Text(
                                            "Email: ${match.email ?? 'N/A'}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(height: 10.h),
                                          Row(
                                            children: [
                                              Container(
                                                height: 26.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: MaterialButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  color: Color(0xFFF92020),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Decline",
                                                    style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                height: 26.h,
                                                width: 80.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                child: MaterialButton(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  color: Color(0xFF50C0E1),
                                                  onPressed: () {},
                                                  child: Text(
                                                    "Confirm",
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            itemCount: state.listmatches.allMatches!.length,
                          )
                        : Container(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
