import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:charity/cubits/auth/otp/otp_cubit.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/core/functions/snackbar_function.dart';
import 'package:charity/theme/color.dart';


class OtpScreen extends StatefulWidget {
  final String phoneNumber;

  const OtpScreen({super.key, required this.phoneNumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pinController.setText('123456');

      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          context.read<OtpCubit>().verifyOtp('123456');
        }
      });
    });
  }

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocListener<OtpCubit, OtpState>(
      listener: (context, state) {
        if (state is OtpSuccess) {
          showSnackBar(context, l10n.otpVerificationSuccess);
          Navigator.pushReplacementNamed(context, '/home_screen');
        } else if (state is OtpFailure) {
          showErrorSnackBar(context, state.errorMessage);
        }
      },
      child: BlocBuilder<OtpCubit, OtpState>(
        builder: (context, state) {
          final otpCubit = context.read<OtpCubit>();
          bool isLoading = state is OtpLoading;

          return Scaffold(
            backgroundColor: AppColors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned.fill(
                          child: SvgPicture.asset(
                            "assets/images/header.svg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          top: 40, // Adjust for status bar
                          left: 10,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: AppColors.white),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Text(
                                l10n.organizationName,
                                style: TextStyle(
                                  fontFamily: 'Amiri',
                                  fontSize: l10n.localeName == 'ar' ? 32 : 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Image.asset(
                              'assets/images/logo.png',
                              height: 120,
                              width: 120,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 32.0),
                    child: Column(
                      children: [
                        Text(
                          l10n.otpConfirmAccount,
                          style: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1f2937),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          l10n.otpMessage,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 16,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 32),
                        Pinput(
                          controller: _pinController,
                          length: 6, // Changed to 6
                          onCompleted: (pin) {
                            otpCubit.verifyOtp(pin);
                          },
                        ),
                        const SizedBox(height: 24),
                        TextButton(
                          onPressed: () {
                            // Resend OTP logic
                          },
                          child: Text(
                            l10n.otpResendCode,
                            style: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 16,
                              color: AppColors.primary500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          // Using same style as login button
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.loginButtonBackground,
                            foregroundColor: AppColors.loginButtonText,
                            minimumSize: const Size(double.infinity, 52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                              side: const BorderSide(
                                  color: AppColors.loginButtonBorder,
                                  width: 2),
                            ),
                            elevation: 4,
                            textStyle: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: isLoading
                              ? null
                              : () {
                                  if (_pinController.length == 6) {
                                    otpCubit.verifyOtp(_pinController.text);
                                  }
                                },
                          child: isLoading
                              ? const SizedBox(
                                  height: 22,
                                  width: 22,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2.5,
                                      color: AppColors.loginButtonText),
                                )
                              : Text(l10n.otpSubmitButton),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
