import 'package:charity/features/Education/cubits/get_education_home_cubit/get_education_home_cubit.dart';
import 'package:charity/screens/Education_section/education_main_screen/education_main_screen.dart';
import 'package:charity/features/Services/profile/cubits/get_beneficiary_profile_cubit/get_beneficiary_profile_cubit.dart';
import 'package:charity/features/clinic/cubits/get_clinic_beneficiary_cubit/get_clinic_beneficiary_cubit.dart'; // New import
import 'package:charity/screens/clinic_appointments_screen/clinic_appointments_screen.dart'; // New import
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/screens/start/splash_screen.dart';
import 'package:charity/screens/auth/login_screen/login_screen.dart';
import 'package:charity/screens/home/home_screen.dart';
import 'package:charity/cubits/splash/splash_cubit.dart';
import 'package:charity/cubits/auth/login/login_cubit.dart';
import 'package:charity/cubits/navigation_cubit/navigation_cubit.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/screens/settings_screen/settings_screen.dart';
import 'package:charity/screens/profile_screen/profile_screen.dart';
import 'package:charity/core/shared/settings_repository.dart';
import 'package:charity/features/Education/cubits/get_all_new_courses_cubit/get_all_new_courses_cubit.dart';
import 'package:charity/features/Education/repo/education_repository.dart'; // Import the repository
import 'package:charity/screens/Education_section/all_courses_screen/all_courses_screen.dart'; // Import the screen

import '../core/services/service_locator.dart';
import '../features/Services/requests_aids/cubits/get_beneficiary_aids_cubit/get_beneficiary_aids_cubit.dart';
import '../features/auth/cubits/login_attempt_cubit/login_attempt_cubit.dart';
import '../screens/Education_section/home_screen/education_home_screen.dart';
import '../screens/aids_screen/aids_screen.dart';
import '../screens/main_screen.dart';
import '../screens/notifications_screen/notifications_screen.dart';

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
  // ======Notifications Screen=====//
  '/notifications': (context) => const NotificationsScreen(),
  // ======Login Screen=====//
  '/login_screen':
      (context) =>
          BlocProvider(
              create: (context) => sl<LoginAttemptCubit>(),
              // create: (context) => LoginCubit(),
              child: LoginScreen()),
  // ======Settings Screen=====//
  '/settings': (context) => BlocProvider(
        create: (context) => SettingsCubit(SettingsRepository()),
        child: const SettingsScreen(),
      ),
  // ======Profile Screen=====//
  '/profile': (context) => BlocProvider(
        create: (context) => sl<GetBeneficiaryProfileCubit>(),
        child: const ProfileScreen(),
      ),
  // ====== Aids Screen =====//
  '/aids_screen': (context) => BlocProvider(
    create: (context) => sl<GetBeneficiaryAidsCubit>()..getBeneficiaryAids(),
    child: const AidsScreen(),
  ),
  // ====== Education Home Screen =====//
  // '/education_home': (context) => MultiBlocProvider(
  //   providers: [
  //     BlocProvider(
  //       create: (context) => sl<GetEducationHomeCubit>(),
  //     ),
  //     BlocProvider(
  //       create: (context) => sl<GetAllNewCoursesCubit>(),
  //     ),
  //   ],
  //   child: const EduHomeScreen(),
  // ),
  // ====== Education Main  =====//
  '/education_main': (context) => MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => GetEducationHomeCubit(sl<EducationRepository>()),
      ),
      BlocProvider(
        create: (context) => GetAllNewCoursesCubit(sl<EducationRepository>()),
      ),
    ],
    child: const EducationMainScreen(),
  ),
  '/allCourses': (context) => BlocProvider(
    create: (context) => GetAllNewCoursesCubit(sl<EducationRepository>()),
    child: const AllCoursesScreen(),
  ),
  // ====== Clinic Appointments Screen =====//
  '/clinic_appointments': (context) => BlocProvider(
    create: (context) => sl<GetClinicBeneficiaryCubit>(),
    child: const ClinicAppointmentsScreen(),
  ),
};
