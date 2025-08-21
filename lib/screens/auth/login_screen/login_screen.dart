import 'package:charity/cubits/auth/otp/otp_cubit.dart';
import 'package:charity/screens/auth/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:charity/cubits/auth/login/login_cubit.dart';
import 'package:charity/cubits/localization/localization_cubit.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:charity/l10n/app_localizations.dart';
import 'package:charity/core/functions/snackbar_function.dart';
import 'package:charity/core/functions/validate_input.dart';
import 'package:charity/theme/color.dart';

// Convert LoginScreen to a StatefulWidget
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Create State class
  String _completePhoneNumber = '';
  final FocusNode _phoneFocusNode = FocusNode(); // FocusNode for IntlPhoneField

  @override
  void initState() {
    super.initState();
    // Add listener to update UI when focus changes
    _phoneFocusNode.addListener(() {
      if (mounted) {
        // Check if the widget is still in the tree
        setState(() {
          // The rebuild will use the new _phoneFocusNode.hasFocus value
        });
      }
    });
  }

  @override
  void dispose() {
    _phoneFocusNode.removeListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    _phoneFocusNode.dispose(); // Dispose the FocusNode
    super.dispose();
  }

  List<DropdownMenuItem<String>> _buildLanguageDropdownItems(
      BuildContext context) {
    final Map<String, String> supportedLanguages = {
      'en': 'English',
      'ar': 'العربية',
    };
    return supportedLanguages.entries.map((entry) {
      return DropdownMenuItem<String>(
        value: entry.key,
        child: Text(entry.value),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations l10n = AppLocalizations.of(context)!;
    final loginCubit = context.read<LoginCubit>();
    final localizationCubit = context.read<LocalizationCubit>();
    final Validate validator = Validate(context: context, l10n: l10n);
    bool isArabic = l10n.localeName == 'ar';

    InputDecoration fieldDecoration(String hintText,
        {Widget? suffixIcon,
        bool isPhoneField = false,
        bool isFocused = false}) {
      return InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
            color: AppColors.loginHintText, fontFamily: 'Lexend', fontSize: 15),
        filled: true,
        fillColor: AppColors.loginFieldBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide:
              const BorderSide(color: AppColors.loginFieldBorder, width: 5.0),
        ),
        focusedBorder: OutlineInputBorder(
          // This border is for the main field itself
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
              color: AppColors.loginFocusedBorder, width: 5.0),
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: isPhoneField ? 8.0 : 16.0,
            vertical: isPhoneField ? 18.0 : 20.0),
        suffixIcon: suffixIcon,
        counterText: "",
      );
    }

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlocProvider(
                create: (context) => OtpCubit(),
                child: OtpScreen(phoneNumber: _completePhoneNumber),
              ),
            ),
          );
        } else if (state is LoginFailure) {
          String errorMessage = state.errorMessage;
          if (errorMessage.toLowerCase().contains("no internet")) {
            errorMessage = l10n.loginErrorNoInternet;
          } else if (errorMessage.toLowerCase().contains("invalid") &&
              (errorMessage.toLowerCase().contains("credential") ||
                  errorMessage.toLowerCase().contains("phone") ||
                  errorMessage.toLowerCase().contains("password"))) {
            errorMessage = l10n.loginErrorInvalidCredentials;
          } else {
            errorMessage = l10n.loginErrorGeneric;
          }
          showErrorSnackBar(context, errorMessage);
        }
      },
      builder: (context, loginState) {
        bool isLoading = loginState is LoginLoading;

        return Scaffold(
          backgroundColor: AppColors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  // Header
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
                  child: Form(
                    key: loginCubit.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.loginWelcomeBack,
                          style: const TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1f2937),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          l10n.loginPhoneNumberLabel,
                          style: const TextStyle(
                              fontFamily: 'Lexend',
                              color: AppColors.loginLabelText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        IntlPhoneField(
                          focusNode: _phoneFocusNode, // Assign the FocusNode
                          initialCountryCode: 'SY',
                          // Main decoration - its focusedBorder will apply to the whole field
                          decoration: fieldDecoration(l10n.loginPhoneNumberHint,
                              isPhoneField: true,
                              isFocused:
                                  _phoneFocusNode.hasFocus // Pass focus state
                              ),
                          style: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 16,
                              color: AppColors.textColorLight),
                          dropdownDecoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              // Dynamically change border color based on focus
                              color: _phoneFocusNode.hasFocus
                                  ? AppColors.loginFocusedBorder
                                  : AppColors.loginFieldBorder
                                      .withOpacity(0.7),
                              width: 5.0,
                            ),
                          ),
                          dropdownIconPosition: IconPosition.leading,
                          dropdownTextStyle: const TextStyle(
                              fontFamily: 'Lexend',
                              fontSize: 16,
                              color: AppColors.textColorLight),
                          flagsButtonPadding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 18.0),
                          dropdownIcon: const Icon(Icons.arrow_drop_down,
                              color: AppColors.loginLabelText, size: 20),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(9),
                          ],
                          onChanged: (PhoneNumber phone) {
                            _completePhoneNumber = phone.completeNumber;
                          },
                          validator: (PhoneNumber? phoneNumberObject) {
                            return validator.validateSyrianPhoneNumber(
                                phoneNumberObject?.number);
                          },
                          disableLengthCheck: true,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
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
                                  if (loginCubit.formKey.currentState!
                                      .validate()) {
                                    if (_completePhoneNumber.isEmpty) {
                                      showErrorSnackBar(context,
                                          l10n.loginValidationPhoneNumberRequired);
                                      return;
                                    }
                                    loginCubit.loginUser(
                                      phone: _completePhoneNumber,
                                    );
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
                              : Text(l10n.loginButton),
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: BlocBuilder<LocalizationCubit,
                              LocalizationState>(
                            builder: (context, localizationState) {
                              return DropdownButton<String>(
                                value: localizationState.locale.languageCode,
                                icon: Icon(Icons.language,
                                    color: Theme.of(context).primaryColor),
                                elevation: 16,
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontFamily: 'Lexend'),
                                underline: Container(
                                  height: 2,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(0.5),
                                ),
                                onChanged: (String? newValue) {
                                  if (newValue != null) {
                                    localizationCubit.changeLanguage(newValue);
                                  }
                                },
                                items: _buildLanguageDropdownItems(context),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ).animate().fade(duration: const Duration(milliseconds: 300));
      },
    );
  }
}
