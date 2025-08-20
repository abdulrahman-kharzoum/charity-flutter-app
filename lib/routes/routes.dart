import 'package:charity/cubits/education/all_courses_cubit/all_courses_cubit.dart';
import 'package:charity/screens/Education_section/education_main_screen/education_main_screen.dart';
import 'package:charity/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/screens/start/splash_screen.dart';
import 'package:charity/screens/auth/login_screen/login_screen.dart';
import 'package:charity/screens/home/home_screen.dart';
import 'package:charity/cubits/splash/splash_cubit.dart';
import 'package:charity/cubits/auth/login/login_cubit.dart';
import 'package:charity/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/cubits/profile_cubit/profile_cubit.dart';
import 'package:charity/screens/settings_screen/settings_screen.dart';
import 'package:charity/screens/profile_screen/profile_screen.dart';
import 'package:charity/core/shared/settings_repository.dart';

import '../cubits/aids_cubit/aids_cubit.dart';
import '../cubits/education/home_screen_education_cubit/home_screen_education_cubit.dart';
import '../screens/Education_section/home_screen/education_home_screen.dart';
import '../screens/aids_screen/aids_screen.dart';

final Map<String, WidgetBuilder> routes = {
  // ======splash Screen=====//
  '/':
      (context) => BlocProvider(
        create: (context) => SplashCubit()..checkConnection(context: context),
        child: const SplashScreen(),
      ),
  // ======Navigation/Home Screen=====//
  '/home_screen':
      (context) => BlocProvider(
        create: (context) => NavigationCubit(),
        child: const MainScreen(),
      ),
  // ======Login Screen=====//
  '/login_screen':
      (context) =>
          BlocProvider(create: (context) => LoginCubit(), child: LoginScreen()),
  // ======Settings Screen=====//
  '/settings': (context) => BlocProvider(
        create: (context) => SettingsCubit(SettingsRepository()),
        child: const SettingsScreen(),
      ),
  // ======Profile Screen=====//
  '/profile': (context) => BlocProvider(
        create: (context) => ProfileCubit(),
        child: const ProfileScreen(),
      ),
  '/edit-profile': (context) => BlocProvider(
    create: (context) => ProfileCubit(),
    child: const ProfileScreen(),
  ),
  // ====== Aids Screen =====//
  '/aids_screen': (context) => BlocProvider(
    create: (context) => AidsCubit()..fetchAids(),
    child: const AidsScreen(),
  ),
  // ====== Education Home Screen =====//
  '/education_home': (context) => BlocProvider(
    create: (context) => HomeScreenEducationCubit()..loadHomeScreenData(),
    child: const EduHomeScreen(),
  ),
  // ====== Education Main  =====//
  '/education_main': (context) => MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => HomeScreenEducationCubit()..loadHomeScreenData(),
      ),
      BlocProvider(
        create: (context) => AllCoursesCubit()..fetchAllCourses(),
      ),
    ],
    child: const EducationMainScreen(),
  ),
};
