import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_cubit.dart';
import 'package:graduationproject/bloc/forget_password/cubit/forget_password_cubit.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/bloc/matches/cubit/matches_cubit.dart';
import 'package:graduationproject/bloc/myfound/cubit/myfound_cubit.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_cubit.dart';
import 'package:graduationproject/bloc/reset_password/cubit/reset_password_cubit.dart';
import 'package:graduationproject/bloc/search_cubit/cubit/search.dart';
import 'package:graduationproject/bloc/secret_code/cubit/secret_code_cubit.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_cubit.dart';
import 'package:graduationproject/bloc/update_founde_cubit/cubit/update_foundes_cubit.dart';
import 'package:graduationproject/bloc/update_name_cubit/cubit.dart';
import 'package:graduationproject/bloc/update_password.dart/update_pass_cubit.dart';
import 'package:graduationproject/bloc/update_requrds/cubit/update_requrdes_cubit.dart';
import 'package:graduationproject/data/api_services/dio_services.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/add_person/add_persone.dart';
import 'package:graduationproject/presantion/screens/find_your_lost/find_home_screen.dart';
import 'package:graduationproject/presantion/screens/forgot_password/forgot_password.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/profile_screen.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/update_name/edit_name.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/update_password/change_password.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_founded/your_found.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_losts/your_lost.dart';
import 'package:graduationproject/presantion/screens/profile_screen/profile/your_matches/your_mathches.dart';
import 'package:graduationproject/presantion/screens/secret_code/secret_code_screen.dart';
import 'package:graduationproject/presantion/screens/signup_screen/form_signup.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';
import 'package:graduationproject/presantion/screens/splash_screen/splash_widgets/splash.dart';
import 'package:graduationproject/presantion/screens/update_password/update_password_screen.dart';
import 'package:graduationproject/presantion/screens/update_records/update_losts/update_screen_lost.dart';
import 'package:graduationproject/presantion/screens/user/user_screen.dart';

import 'presantion/screens/splash_screen/splash_widgets/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  CacheHelper().init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => SignupCubit(DioServices(Dio())),
          ),
          BlocProvider(create: (context) => AddPersonCubit(DioServices(Dio()))),
          BlocProvider(
            create: (context) => FindpersonCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => SearchCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => MyLostCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpDateNameCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpdatePasswordCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => ForgetPasswordCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => MyfoundCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => SecretCodeCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => ResetPasswordCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpdateRequrdesCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => MatchesCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpdateRequrdesCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpdateFoundesCubit(DioServices(Dio())),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      ),
    );
  }
}
