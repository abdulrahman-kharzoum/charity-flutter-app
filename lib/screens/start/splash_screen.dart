import 'package:charity/core/functions/statics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:charity/cubits/splash/splash_cubit.dart';
import 'package:charity/theme/color.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SplashCubit>();
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.splashGradient),
        child: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is SplashLoginState) {
              state.isLogIn == true
                  ? Navigator.of(context).pushReplacementNamed('/home_screen')
                  : Navigator.of(context).pushReplacementNamed('/login_screen');
            } else if (state is SplashNoInternetConnection) {
              if (cubit.checkInternetCounter == 0) {
                // Show internet error dialog here if needed
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('No internet connection'),
                    backgroundColor: AppColors.darkRed,
                  ),
                );
              }
              cubit.checkConnection(context: context);
            }
          },
          builder: (context, state) {
            return SizedBox(
              height: mediaQuery.height,
              width: mediaQuery.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: mediaQuery.width,
                    height:
                        Statics.isPlatformDesktop
                            ? mediaQuery.height / 2.2
                            : mediaQuery.height / 2.8,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      // borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.gray.withAlpha((0.2 * 255).toInt()),
                          blurRadius: 24,
                          offset: Offset(0, 8),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Image(
                          image: const AssetImage('assets/images/logo.png'),
                          height:
                              Statics.isPlatformDesktop
                                  ? mediaQuery.height / 2.5
                                  : mediaQuery.height / 3.5,
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.medium,
                        )
                        .animate()
                        .fade(duration: const Duration(milliseconds: 600))
                        .slideY(
                          begin: 1,
                          end: 0,
                          duration: const Duration(milliseconds: 900),
                          curve: Curves.easeOutCubic,
                        ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
