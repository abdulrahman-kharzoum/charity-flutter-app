import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/auth/login/login_cubit.dart';
import 'package:charity/cubits/localization/localization_cubit.dart';
import 'package:charity/cubits/settings_cubit/settings_cubit.dart';
import 'package:charity/cubits/profile_cubit/profile_cubit.dart';
import 'package:charity/core/shared/settings_repository.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/routes/routes.dart' as app_routes;
import 'package:charity/theme/theme.dart';

import 'core/shared/local_network.dart'; // Import your custom themes

// No global navigatorKey needed if routes handle context properly
// final navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async { // main needs to be async for await
  WidgetsFlutterBinding.ensureInitialized();
  await CacheNetwork.cacheInit(); // Initialize SharedPreferences via CacheNetwork
  // You might want to load the initial locale here as well or ensure cubit does it correctly.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // LoginCubit is provided in the LoginScreen route in routes.dart
        // If it needs to be global, keep it here.
        // BlocProvider<LoginCubit>(
        //   create: (context) => LoginCubit(),
        // ),
        BlocProvider<LocalizationCubit>(
          create: (context) => LocalizationCubit(),
        ),
        BlocProvider<SettingsCubit>(
          create: (context) => SettingsCubit(SettingsRepository()),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit(),
        ),
      ],
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, localizationState) {
          return MaterialApp(
            debugShowCheckedModeBanner: false, // Disable debug banner
            // navigatorKey: navigatorKey, // If needed for specific scenarios
            title: 'Charity App', // This could also be localized later

            theme: lightThemeData, // Use your custom light theme
            darkTheme: darkThemeData, // Use your custom dark theme
            themeMode: ThemeMode.system, // Or control with another Cubit/setting

            locale: localizationState.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,

            initialRoute: '/', // Set initial route (e.g., SplashScreen or LoginScreen)
            routes: app_routes.routes, // Use routes from routes.dart

            // home: LoginScreen(), // Remove this if using initialRoute and routes
          );
        },
      ),
    );
  }
}
