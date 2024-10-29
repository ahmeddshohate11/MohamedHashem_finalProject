import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/update_password.dart/update_pass_cubit.dart';
import 'package:graduationproject/bloc/update_password.dart/update_pass_state.dart';

class FormChangePassword extends StatelessWidget {
  const FormChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdatePasswordCubit, UpdatePassworfState>(
      listener: (context, state) {
        if (state is UpdatePasswoedseacsess) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(" updated Password sucessfully")));
          Navigator.of(context).pop();
        } else if (state is UpdatePasswoedfaliouer) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errormassage)));
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: context
                      .read<UpdatePasswordCubit>()
                      .passwordCurrentcontroller,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff151528),
                      ),
                    ),
                    hintStyle: TextStyle(fontSize: 16.sp, color: Colors.white),
                    hintText: "Enter new password Current ",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20.h,
                      color: Color.fromARGB(255, 22, 165, 248),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 22, 165, 248),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  controller:
                      context.read<UpdatePasswordCubit>().passwordcontroller,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff151528),
                      ),
                    ),
                    hintStyle: TextStyle(fontSize: 16.sp, color: Colors.white),
                    hintText: "Enter new Password ",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20.h,
                      color: Color.fromARGB(255, 22, 165, 248),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 22, 165, 248),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 55,
                child: TextField(
                  controller: context
                      .read<UpdatePasswordCubit>()
                      .passwordConfirmcontroller,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff151528),
                      ),
                    ),
                    hintStyle: TextStyle(fontSize: 16.sp, color: Colors.white),
                    hintText: "Enter passwordConfirm ",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20.h,
                      color: Color.fromARGB(255, 22, 165, 248),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 22, 165, 248),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 170.w,
                child: MaterialButton(
                  onPressed: () {
                    context.read<UpdatePasswordCubit>().ChangePassword();
                  },
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xff50C0E1),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        state is UpdatePasswoedloaded
                            ? Text("Loading.....")
                            : Text(
                                "Update ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
