import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// The name of the charitable organization
  ///
  /// In en, this message translates to:
  /// **'Sheikh Muhyiddin Charity'**
  String get organizationName;

  /// No description provided for @loginWelcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get loginWelcomeBack;

  /// No description provided for @loginPhoneNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get loginPhoneNumberLabel;

  /// No description provided for @loginPhoneNumberHint.
  ///
  /// In en, this message translates to:
  /// **'9XXXXXXXX'**
  String get loginPhoneNumberHint;

  /// No description provided for @loginPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get loginPasswordLabel;

  /// No description provided for @loginPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get loginPasswordHint;

  /// No description provided for @loginForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget the password?'**
  String get loginForgotPassword;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @loginValidationPhoneNumberInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid characters in phone number.'**
  String get loginValidationPhoneNumberInvalid;

  /// No description provided for @loginValidationPhoneNumberRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number'**
  String get loginValidationPhoneNumberRequired;

  /// No description provided for @loginValidationPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get loginValidationPasswordRequired;

  /// No description provided for @loginValidationPhoneNumberStartsWith9.
  ///
  /// In en, this message translates to:
  /// **'Phone number must start with 9.'**
  String get loginValidationPhoneNumberStartsWith9;

  /// No description provided for @loginValidationPhoneNumberLength.
  ///
  /// In en, this message translates to:
  /// **'Phone number must be 9 digits long.'**
  String get loginValidationPhoneNumberLength;

  /// No description provided for @loginValidationPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters.'**
  String get loginValidationPasswordMinLength;

  /// No description provided for @loginErrorNoInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Please check your network.'**
  String get loginErrorNoInternet;

  /// No description provided for @loginErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Login failed. Please try again.'**
  String get loginErrorGeneric;

  /// No description provided for @loginErrorInvalidCredentials.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number or password. Please try again.'**
  String get loginErrorInvalidCredentials;

  /// No description provided for @loginSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Login Successful!'**
  String get loginSuccessMessage;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @homeScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Home Page'**
  String get homeScreenTitle;

  /// No description provided for @homeQuickAccess.
  ///
  /// In en, this message translates to:
  /// **'Quick Access'**
  String get homeQuickAccess;

  /// No description provided for @homeServiceDispensaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Clinic Section'**
  String get homeServiceDispensaryTitle;

  /// No description provided for @homeServiceDispensarySubtitle.
  ///
  /// In en, this message translates to:
  /// **'We care for your health\nCheck out the available clinic services'**
  String get homeServiceDispensarySubtitle;

  /// No description provided for @homeServiceEducationTitle.
  ///
  /// In en, this message translates to:
  /// **'Education Section'**
  String get homeServiceEducationTitle;

  /// No description provided for @homeServiceEducationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We strive to empower you with knowledge\nVisit the education section'**
  String get homeServiceEducationSubtitle;

  /// No description provided for @homeQuickAccessPharmacies.
  ///
  /// In en, this message translates to:
  /// **'On-Duty Pharmacies'**
  String get homeQuickAccessPharmacies;

  /// No description provided for @homeQuickAccessAppointment.
  ///
  /// In en, this message translates to:
  /// **'Book Appointment'**
  String get homeQuickAccessAppointment;

  /// No description provided for @homeQuickAccessFamilyInfo.
  ///
  /// In en, this message translates to:
  /// **'View Family Info'**
  String get homeQuickAccessFamilyInfo;

  /// No description provided for @homeQuickAccessCourses.
  ///
  /// In en, this message translates to:
  /// **'Browse Latest Courses'**
  String get homeQuickAccessCourses;

  /// No description provided for @bottomNavMenu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get bottomNavMenu;

  /// No description provided for @bottomNavHelp.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get bottomNavHelp;

  /// No description provided for @bottomNavHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get bottomNavHome;

  /// No description provided for @bottomNavScan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get bottomNavScan;

  /// No description provided for @bottomNavNotifications.
  ///
  /// In en, this message translates to:
  /// **'Alerts'**
  String get bottomNavNotifications;

  /// No description provided for @homeNoImages.
  ///
  /// In en, this message translates to:
  /// **'No images to display'**
  String get homeNoImages;

  /// Title for the My Requests screen
  ///
  /// In en, this message translates to:
  /// **'My Requests'**
  String get myRequestsTitle;

  /// Sorry no requests to display! Add a request
  ///
  /// In en, this message translates to:
  /// **'No requests currently'**
  String get myRequestsNoRequests;

  /// Network Error
  ///
  /// In en, this message translates to:
  /// **'Error: '**
  String get myRequestsErrorPrefix;

  /// unknown state on My Requests screen
  ///
  /// In en, this message translates to:
  /// **'Unknown state'**
  String get myRequestsUnknownState;

  /// No description provided for @addRequestButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'Add Request'**
  String get addRequestButtonLabel;

  /// No description provided for @requestHistoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Request History'**
  String get requestHistoryLabel;

  /// No description provided for @addRequestScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Request Financial Aid'**
  String get addRequestScreenTitle;

  /// No description provided for @amountLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amountLabel;

  /// No description provided for @amountHint.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount'**
  String get amountHint;

  /// No description provided for @amountValidationErrorRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter the amount'**
  String get amountValidationErrorRequired;

  /// No description provided for @amountValidationErrorInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid amount'**
  String get amountValidationErrorInvalid;

  /// No description provided for @currencyUnitThousand.
  ///
  /// In en, this message translates to:
  /// **'Thousand'**
  String get currencyUnitThousand;

  /// No description provided for @currencyUnitMillion.
  ///
  /// In en, this message translates to:
  /// **'Million'**
  String get currencyUnitMillion;

  /// No description provided for @reasonLabel.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get reasonLabel;

  /// No description provided for @reasonHint.
  ///
  /// In en, this message translates to:
  /// **'State the reason for your request...'**
  String get reasonHint;

  /// No description provided for @reasonValidationError.
  ///
  /// In en, this message translates to:
  /// **'Please enter the reason for the request'**
  String get reasonValidationError;

  /// No description provided for @descriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get descriptionLabel;

  /// No description provided for @descriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Add a detailed description...'**
  String get descriptionHint;

  /// No description provided for @descriptionValidationError.
  ///
  /// In en, this message translates to:
  /// **'Please enter the description'**
  String get descriptionValidationError;

  /// No description provided for @notesLabel.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notesLabel;

  /// No description provided for @notesHint.
  ///
  /// In en, this message translates to:
  /// **'Any additional notes...'**
  String get notesHint;

  /// No description provided for @submitRequestButton.
  ///
  /// In en, this message translates to:
  /// **'Request Financial Aid'**
  String get submitRequestButton;

  /// No description provided for @requestSuccessMessage.
  ///
  /// In en, this message translates to:
  /// **'Your request has been submitted successfully!'**
  String get requestSuccessMessage;

  /// No description provided for @requestFailureMessageGeneric.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit request. Please try again.'**
  String get requestFailureMessageGeneric;

  /// Validation error for reason being too short.
  ///
  /// In en, this message translates to:
  /// **'Reason must be at least {minLength} characters long.'**
  String reasonTooShortError(int minLength);

  /// Validation error for description being too short.
  ///
  /// In en, this message translates to:
  /// **'Description must be at least {minLength} characters long.'**
  String descriptionTooShortError(int minLength);

  /// No description provided for @amountValidationErrorPositive.
  ///
  /// In en, this message translates to:
  /// **'Amount must be a positive number.'**
  String get amountValidationErrorPositive;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
