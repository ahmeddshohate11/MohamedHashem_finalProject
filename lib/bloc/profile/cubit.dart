// import 'dart:convert';

// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:graduationproject/bloc/profile/state.dart';
// import 'package:graduationproject/bloc/update_name_cubit/state.dart';
// import 'package:graduationproject/data/api_services/api_servicese.dart';
// import 'package:graduationproject/data/api_services/end_pointes.dart';
// import 'package:graduationproject/data/errors/server_excaption.dart';
// import 'package:graduationproject/data/model/profile/profile_model.dart';

// class ProfileCubit extends Cubit<ProfileState> {
//   ProfileCubit(
//     this.api,
//   ) : super(ProfiletInitial());
//   final ApiServices api;
//   Future GitProfile() async {
//     try {
//    //  emit(Profileloaded());

//       final response = await api.get(
//         "https://lostcal.onrender.com/api/user/profile",
//       );
//     //  emit(Profileseacsess(profilemodel: Profile.fromJson(response)));
//       return response;
//     } on ServerException catch (e) {
//   //    emit(Profilefaliouer(
//    //       errormassage: "You are not login, Please login to get access"));
//     }
//   }
// }
