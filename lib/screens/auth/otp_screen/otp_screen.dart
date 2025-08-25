import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/core/functions/snackbar_function.dart';
import 'package:charity/theme/color.dart';
import 'package:charity/features/auth/cubits/verify_otp_cubit/verify_otp_cubit.dart';
import 'package:charity/features/auth/cubits/resend_otp_cubit/resend_otp_cubit.dart';
import 'package:charity/features/auth/models/verify_otp_request_body_model.dart';
import 'package:charity/core/services/status.dart'; // Import for SubmissionStatus


class OtpScreen extends StatefulWidget {
  final String phoneNumber;
  final int attemptId;

  const OtpScreen({super.key, required this.phoneNumber, required this.attemptId});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    bool isArabic = l10n.localeName == 'ar';

    return MultiBlocListener(
      listeners: [
        BlocListener<VerifyOtpCubit, VerifyOtpState>(
          listener: (context, state) {
            if (state.status == SubmissionStatus.success) {
              showSuccessSnackBar(context, l10n.otpVerificationSuccess);
              Navigator.pushReplacementNamed(context, '/home_screen'); // Adjust as needed
            } else if (state.status == SubmissionStatus.error) {
              String errorMessage = state.failure?.message ?? l10n.loginErrorGeneric;
               if (errorMessage.toLowerCase().contains("no internet")) {
                errorMessage = l10n.loginErrorNoInternet;
              } else if (errorMessage.toLowerCase().contains("invalid") &&
                  (errorMessage.toLowerCase().contains("credential") ||
                      errorMessage.toLowerCase().contains("otp"))) {
                errorMessage = l10n.otpErrorInvalidCode;
              }
              showErrorSnackBar(context, errorMessage);
            }
          },
        ),
        BlocListener<ResendOtpCubit, ResendOtpState>(
          listener: (context, state) {
            if (state.status == SubmissionStatus.success) {
              showSuccessSnackBar(context, l10n.otpResendCodeSuccess);
            } else if (state.status == SubmissionStatus.error) {
              String errorMessage = state.failure?.message ?? l10n.loginErrorGeneric;
              if (errorMessage.toLowerCase().contains("no internet")) {
                errorMessage = l10n.loginErrorNoInternet;
              }
              showErrorSnackBar(context, errorMessage);
            }
          },
        ),
      ],
      child: BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
        builder: (context, verifyOtpState) {
          final verifyOtpCubit = context.read<VerifyOtpCubit>();
          final resendOtpCubit = context.read<ResendOtpCubit>();
          bool isVerifying = verifyOtpState.status == SubmissionStatus.loading;
          bool isResending = resendOtpCubit.state.status == SubmissionStatus.loading;

          return Scaffold(
            backgroundColor: AppColors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
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
                          left: isArabic ? null : 10,
                          right: isArabic ? 10 : null,
                          child: IconButton(
                            icon: Icon(
                                isArabic ? Icons.arrow_forward : Icons.arrow_back,
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
                          length: 6,

                          onCompleted: (pin) {
                            verifyOtpCubit.verifyOtp(
                              body: VerifyOtpRequestBodyModel(
                                attempt_id: widget.attemptId,
                                otp: pin,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 24),
                        TextButton(
                          onPressed: isResending
                              ? null
                              : () {
                                  resendOtpCubit.resendOtp(attemptId: widget.attemptId);
                                },
                          child: isResending
                              ? const SizedBox(
                                  height: 16,
                                  width: 16,
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: AppColors.primary500),
                                )
                              : Text(
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
                          onPressed: isVerifying
                              ? null
                              : () {
                                  if (_pinController.length == 6) {
                                    verifyOtpCubit.verifyOtp(
                                      body: VerifyOtpRequestBodyModel(
                                        attempt_id: widget.attemptId,
                                        otp: _pinController.text,
                                      ),
                                    );
                                  }
                                },
                          child: isVerifying
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
                  Transform.flip(
                    flipY: true,
                    child: SvgPicture.asset(
                      "assets/images/header.svg",
                      fit: BoxFit.fill,
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