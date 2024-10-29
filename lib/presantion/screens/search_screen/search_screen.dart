import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/search_cubit/cubit/search.dart';
import 'package:graduationproject/bloc/search_cubit/state/search_state.dart';

class SearchScreenpage extends StatelessWidget {
  const SearchScreenpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is Searchseacsess) {
        } else if (state is Searchfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(" this name not found ")));
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Column(children: [
                Image.asset(
                  fit: BoxFit.cover,
                  "assets/images/logo2.png",
                  height: 100.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Color(0xff151528),
                  ),
                  child: TextField(
                    controller: context.read<SearchCubit>().nameController,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                    decoration: InputDecoration(
                      icon: GestureDetector(
                        onTap: () {
                          context.read<SearchCubit>().Search();
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => ProfileScreen()));
                        },
                        child: state is Searchloaded
                            ? CircularProgressIndicator()
                            : Icon(
                                Icons.search,
                                color: Colors.blue[300],
                                size: 35.h,
                              ),
                      ),
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                      hintText: "search by name",
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(
                          color: Color(0xff151528),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide(
                          color: Color(0xff151528),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: state is Searchloaded
                          ? Container()
                          : state is Searchseacsess
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0XFF151528),
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        height: 150.h,
                                        width: 260.w,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.network(
                                                      (state
                                                          .searchlist
                                                          .result![index]
                                                          .images![0]),
                                                      height: 80,
                                                      width: 50,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    Image.network(
                                                      (state
                                                          .searchlist
                                                          .result![index]
                                                          .images![1]),
                                                      height: 80,
                                                      width: 50,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Image.network(
                                                      (state
                                                          .searchlist
                                                          .result![index]
                                                          .images![2]),
                                                      height: 60,
                                                      width: 40,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    Image.network(
                                                      (state
                                                          .searchlist
                                                          .result![index]
                                                          .images![2]),
                                                      height: 60,
                                                      width: 40,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Name : ${state.searchlist.result![index].name}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Addres : ${state.searchlist.result![index].address}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Phone :${state.searchlist.result![index].phoneNumber}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  "Age : ${state.searchlist.result![index].age}",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Icon(
                                                          Icons
                                                              .mode_edit_outlined,
                                                          color: Colors.white,
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
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: state.searchlist.result?.length)
                              : Container()),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
