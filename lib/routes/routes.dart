import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/screens/start/splash_screen.dart';
import 'package:charity/screens/auth/login_screen/login_screen.dart';
import 'package:charity/screens/home/home_screen.dart';
import 'package:charity/cubits/splash/splash_cubit.dart';
import 'package:charity/cubits/auth/login/login_cubit.dart';
import 'package:charity/cubits/navigation_cubit/navigation_cubit.dart';

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
        child: const HomeScreen(),
      ),
  // ======Login Screen=====//
  '/login_screen':
      (context) =>
          BlocProvider(create: (context) => LoginCubit(), child: LoginScreen()),
};
