import 'package:charity/core/notification_config/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/localization/localization_cubit.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/cubits/profile_cubit/profile_cubit.dart';
import 'package:charity/core/shared/settings_repository.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/routes/routes.dart' as app_routes;
import 'package:charity/theme/theme.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'core/shared/local_network.dart';
import 'firebase_options.dart';

import 'core/services/service_locator.dart';

// final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  await CacheNetwork.cacheInit();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await FirebaseApi().initNotification();
  await setupServiceLocator(sharedPreferences);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<LoginCubit>(
        //   create: (context) => LoginCubit(),
        // ),
        BlocProvider<LocalizationCubit>(
          create: (context) => LocalizationCubit(),
        ),
        BlocProvider<SettingsCubit>(
          create: (context) => SettingsCubit(SettingsRepository()),
        ),
        BlocProvider<ProfileCubit>(create: (context) => ProfileCubit()),
      ],
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, localizationState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // navigatorKey: navigatorKey,
            title: 'Charity App',

            theme: lightThemeData,
            darkTheme: darkThemeData,
            themeMode: ThemeMode.system,

            locale: localizationState.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,

            initialRoute: '/',
            routes: app_routes.routes,

            // home: LoginScreen(),
          );
        },
      ),
    );
  }
}
