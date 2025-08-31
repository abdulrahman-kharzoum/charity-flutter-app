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

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

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

  /// No description provided for @otpConfirmAccount.
  ///
  /// In en, this message translates to:
  /// **'Confirm account'**
  String get otpConfirmAccount;

  /// No description provided for @otpMessage.
  ///
  /// In en, this message translates to:
  /// **'We sent an OTP code to the number you entered'**
  String get otpMessage;

  /// No description provided for @otpResendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend the code'**
  String get otpResendCode;

  /// No description provided for @otpSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'Confirm account'**
  String get otpSubmitButton;

  /// No description provided for @otpInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP code. Please try again.'**
  String get otpInvalidCode;

  /// No description provided for @otpVerificationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Account verified successfully!'**
  String get otpVerificationSuccess;

  /// No description provided for @otpVerificationFailure.
  ///
  /// In en, this message translates to:
  /// **'Account verification failed. Please try again.'**
  String get otpVerificationFailure;

  /// No description provided for @otpVerificationCodeSent.
  ///
  /// In en, this message translates to:
  /// **'Verification code sent successfully!'**
  String get otpVerificationCodeSent;

  /// No description provided for @otpErrorInvalidCode.
  ///
  /// In en, this message translates to:
  /// **'Invalid OTP code. Please try again.'**
  String get otpErrorInvalidCode;

  /// No description provided for @otpResendCodeSuccess.
  ///
  /// In en, this message translates to:
  /// **'OTP code re-sent successfully!'**
  String get otpResendCodeSuccess;

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
  /// **'Aids'**
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

  /// No description provided for @urgencyLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Urgency Level'**
  String get urgencyLevelLabel;

  /// No description provided for @urgencyLevelNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get urgencyLevelNormal;

  /// No description provided for @urgencyLevelLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get urgencyLevelLow;

  /// No description provided for @urgencyLevelMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get urgencyLevelMedium;

  /// No description provided for @urgencyLevelHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get urgencyLevelHigh;

  /// No description provided for @selectDateHint.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDateHint;

  /// No description provided for @receivedAtLabel.
  ///
  /// In en, this message translates to:
  /// **'Received At'**
  String get receivedAtLabel;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @receivedAtEmptyWarning.
  ///
  /// In en, this message translates to:
  /// **'The received_at field is empty. Do you want to continue?'**
  String get receivedAtEmptyWarning;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @customizeYourExperience.
  ///
  /// In en, this message translates to:
  /// **'Customize your experience'**
  String get customizeYourExperience;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabled;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @appInfo.
  ///
  /// In en, this message translates to:
  /// **'App information and support'**
  String get appInfo;

  /// No description provided for @johnDoe.
  ///
  /// In en, this message translates to:
  /// **'John Doe'**
  String get johnDoe;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @personalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Info'**
  String get personalInfo;

  /// No description provided for @addresses.
  ///
  /// In en, this message translates to:
  /// **'Addresses'**
  String get addresses;

  /// No description provided for @contactInfo.
  ///
  /// In en, this message translates to:
  /// **'Contact Info'**
  String get contactInfo;

  /// No description provided for @emailPreferences.
  ///
  /// In en, this message translates to:
  /// **'Email Preferences'**
  String get emailPreferences;

  /// No description provided for @profileSections.
  ///
  /// In en, this message translates to:
  /// **'Profile Sections'**
  String get profileSections;

  /// No description provided for @profileTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// No description provided for @profileEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileEditProfile;

  /// No description provided for @profilePersonalInfo.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get profilePersonalInfo;

  /// No description provided for @profileFamilyInfo.
  ///
  /// In en, this message translates to:
  /// **'Family Information'**
  String get profileFamilyInfo;

  /// No description provided for @profileDependentsInfo.
  ///
  /// In en, this message translates to:
  /// **'Dependents Information'**
  String get profileDependentsInfo;

  /// No description provided for @profileGroupInfo.
  ///
  /// In en, this message translates to:
  /// **'Group Information'**
  String get profileGroupInfo;

  /// No description provided for @profileAvailableAid.
  ///
  /// In en, this message translates to:
  /// **'Available Aid'**
  String get profileAvailableAid;

  /// No description provided for @profileRequests.
  ///
  /// In en, this message translates to:
  /// **'My Requests'**
  String get profileRequests;

  /// No description provided for @profileLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get profileLogout;

  /// No description provided for @profileUserNamePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get profileUserNamePlaceholder;

  /// No description provided for @profileUserPhonePlaceholder.
  ///
  /// In en, this message translates to:
  /// **'098XXXXXXX'**
  String get profileUserPhonePlaceholder;

  /// No description provided for @availableAidsTitle.
  ///
  /// In en, this message translates to:
  /// **'Available Aids'**
  String get availableAidsTitle;

  /// No description provided for @aidHistoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Aid History'**
  String get aidHistoryLabel;

  /// No description provided for @noAidsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No aids are currently listed.'**
  String get noAidsAvailable;

  /// No description provided for @aidsErrorPrefix.
  ///
  /// In en, this message translates to:
  /// **'Error loading aids: '**
  String get aidsErrorPrefix;

  /// No description provided for @aidsUnknownState.
  ///
  /// In en, this message translates to:
  /// **'Unknown aids state.'**
  String get aidsUnknownState;

  /// Title for the screen showing details of a single request
  ///
  /// In en, this message translates to:
  /// **'Request Details'**
  String get requestDetailsTitle;

  /// Title for the screen showing details of a single aid item
  ///
  /// In en, this message translates to:
  /// **'Aid Details'**
  String get aidDetailsTitle;

  /// Error message when the QR code fails to generate or display
  ///
  /// In en, this message translates to:
  /// **'Error displaying QR Code. Please try again.'**
  String get qrError;

  /// Label for the date field
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dateLabel;

  /// Label for the provider of an aid item
  ///
  /// In en, this message translates to:
  /// **'Provided by'**
  String get providedByLabel;

  /// No description provided for @bottomNavMyRequests.
  ///
  /// In en, this message translates to:
  /// **'My Requests'**
  String get bottomNavMyRequests;

  /// No description provided for @bottomNavAids.
  ///
  /// In en, this message translates to:
  /// **'Aids'**
  String get bottomNavAids;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Education and Courses '**
  String get appName;

  /// Greeting message on the home screen
  ///
  /// In en, this message translates to:
  /// **'Hello, {userName}'**
  String greeting(String userName);

  /// No description provided for @myChildren.
  ///
  /// In en, this message translates to:
  /// **'My Children'**
  String get myChildren;

  /// No description provided for @newCourses.
  ///
  /// In en, this message translates to:
  /// **'New Courses'**
  String get newCourses;

  /// No description provided for @viewAllNewCourses.
  ///
  /// In en, this message translates to:
  /// **'View All New Courses'**
  String get viewAllNewCourses;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @children.
  ///
  /// In en, this message translates to:
  /// **'Children'**
  String get children;

  /// No description provided for @courses.
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get courses;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @coursesLabel.
  ///
  /// In en, this message translates to:
  /// **'{count} Courses'**
  String coursesLabel(int count);

  /// No description provided for @balanceLabel.
  ///
  /// In en, this message translates to:
  /// **'Balance: \${amount}'**
  String balanceLabel(String amount);

  /// No description provided for @agesLabel.
  ///
  /// In en, this message translates to:
  /// **'Ages {range}'**
  String agesLabel(Object range);

  /// No description provided for @noItemsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No items available at the moment.'**
  String get noItemsAvailable;

  /// No description provided for @allCoursesScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'New Courses'**
  String get allCoursesScreenTitle;

  /// No description provided for @exploreNewCoursesTitle.
  ///
  /// In en, this message translates to:
  /// **'Explore New Courses'**
  String get exploreNewCoursesTitle;

  /// No description provided for @exploreNewCoursesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Discover the latest courses designed to enhance your child\'s learning journey. Each course is crafted by expert educators to provide engaging and effective educational content.'**
  String get exploreNewCoursesSubtitle;

  /// No description provided for @requestSubscriptionButton.
  ///
  /// In en, this message translates to:
  /// **'Request Subscription'**
  String get requestSubscriptionButton;

  /// No description provided for @courseMathExplorersTitle.
  ///
  /// In en, this message translates to:
  /// **'Math Explorers'**
  String get courseMathExplorersTitle;

  /// No description provided for @courseMathExplorersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A fun and interactive course to build foundational math skills.'**
  String get courseMathExplorersSubtitle;

  /// No description provided for @courseCreativeWritingTitle.
  ///
  /// In en, this message translates to:
  /// **'Creative Writing Workshop'**
  String get courseCreativeWritingTitle;

  /// No description provided for @courseCreativeWritingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Unleash your child\'s imagination with our creative writing course.'**
  String get courseCreativeWritingSubtitle;

  /// No description provided for @courseScienceAdventuresTitle.
  ///
  /// In en, this message translates to:
  /// **'Science Adventures'**
  String get courseScienceAdventuresTitle;

  /// No description provided for @courseScienceAdventuresSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore the wonders of science through hands-on experiments.'**
  String get courseScienceAdventuresSubtitle;

  /// No description provided for @courseArtDesignTitle.
  ///
  /// In en, this message translates to:
  /// **'Art & Design Fundamentals'**
  String get courseArtDesignTitle;

  /// No description provided for @courseArtDesignSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Learn the basics of art and design with our introductory course.'**
  String get courseArtDesignSubtitle;

  /// No description provided for @loadingCourses.
  ///
  /// In en, this message translates to:
  /// **'Loading courses...'**
  String get loadingCourses;

  /// No description provided for @errorLoadingCourses.
  ///
  /// In en, this message translates to:
  /// **'Error loading courses. Please try again.'**
  String get errorLoadingCourses;

  /// No description provided for @errorLabel.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get errorLabel;

  /// No description provided for @childProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Child Profile'**
  String get childProfileTitle;

  /// No description provided for @childIdLabel.
  ///
  /// In en, this message translates to:
  /// **'ID: {studentId}'**
  String childIdLabel(String studentId);

  /// No description provided for @coursesTab.
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get coursesTab;

  /// No description provided for @academicProgressTab.
  ///
  /// In en, this message translates to:
  /// **'Academic Progress'**
  String get academicProgressTab;

  /// No description provided for @financialStatementTab.
  ///
  /// In en, this message translates to:
  /// **'Financial Statement'**
  String get financialStatementTab;

  /// No description provided for @currentSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get currentSectionTitle;

  /// No description provided for @pastSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Past'**
  String get pastSectionTitle;

  /// No description provided for @noCoursesAvailable.
  ///
  /// In en, this message translates to:
  /// **'No courses available for this section.'**
  String get noCoursesAvailable;

  /// No description provided for @noDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No data available.'**
  String get noDataAvailable;

  /// No description provided for @gradeLevelLabel.
  ///
  /// In en, this message translates to:
  /// **'Grade {level}'**
  String gradeLevelLabel(String level);

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get somethingWentWrong;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @anErrorHappened.
  ///
  /// In en, this message translates to:
  /// **'An error happened'**
  String get anErrorHappened;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get noInternetConnection;

  /// No description provided for @serverIsDown.
  ///
  /// In en, this message translates to:
  /// **'Server is down'**
  String get serverIsDown;

  /// No description provided for @internetConnectionFailed.
  ///
  /// In en, this message translates to:
  /// **'Internet connection failed'**
  String get internetConnectionFailed;

  /// No description provided for @errorTitle.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get errorTitle;

  /// No description provided for @successTitle.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get successTitle;

  /// No description provided for @okButton.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okButton;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Server Error'**
  String get serverError;

  /// No description provided for @attendanceRecordTitle.
  ///
  /// In en, this message translates to:
  /// **'Attendance Record'**
  String get attendanceRecordTitle;

  /// No description provided for @attendanceLabel.
  ///
  /// In en, this message translates to:
  /// **'Attendance'**
  String get attendanceLabel;

  /// No description provided for @last30DaysLabel.
  ///
  /// In en, this message translates to:
  /// **'Last 30 Days'**
  String get last30DaysLabel;

  /// No description provided for @gradesAndViolationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Grades and Violations'**
  String get gradesAndViolationsTitle;

  /// No description provided for @violationLabel.
  ///
  /// In en, this message translates to:
  /// **'Violation'**
  String get violationLabel;

  /// No description provided for @positiveAndNegativeNotesTitle.
  ///
  /// In en, this message translates to:
  /// **'Positive and Negative Notes'**
  String get positiveAndNegativeNotesTitle;

  /// No description provided for @positiveNoteLabel.
  ///
  /// In en, this message translates to:
  /// **'Positive Note'**
  String get positiveNoteLabel;

  /// No description provided for @negativeNoteLabel.
  ///
  /// In en, this message translates to:
  /// **'Negative Note'**
  String get negativeNoteLabel;

  /// No description provided for @financialOverviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get financialOverviewTitle;

  /// No description provided for @amountDueLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount Due'**
  String get amountDueLabel;

  /// No description provided for @amountPaidLabel.
  ///
  /// In en, this message translates to:
  /// **'Amount Paid'**
  String get amountPaidLabel;

  /// No description provided for @paymentHistoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Payment History'**
  String get paymentHistoryTitle;

  /// No description provided for @paymentReceivedLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment Received'**
  String get paymentReceivedLabel;

  /// No description provided for @mondayShort.
  ///
  /// In en, this message translates to:
  /// **'Mon'**
  String get mondayShort;

  /// No description provided for @tuesdayShort.
  ///
  /// In en, this message translates to:
  /// **'Tue'**
  String get tuesdayShort;

  /// No description provided for @wednesdayShort.
  ///
  /// In en, this message translates to:
  /// **'Wed'**
  String get wednesdayShort;

  /// No description provided for @thursdayShort.
  ///
  /// In en, this message translates to:
  /// **'Thu'**
  String get thursdayShort;

  /// No description provided for @fridayShort.
  ///
  /// In en, this message translates to:
  /// **'Fri'**
  String get fridayShort;

  /// No description provided for @noAcademicData.
  ///
  /// In en, this message translates to:
  /// **'No academic data available for this child.'**
  String get noAcademicData;

  /// No description provided for @noFinancialData.
  ///
  /// In en, this message translates to:
  /// **'No financial data available for this child.'**
  String get noFinancialData;

  /// No description provided for @studentIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Student ID'**
  String get studentIdLabel;

  /// No description provided for @exitAppDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Exit App'**
  String get exitAppDialogTitle;

  /// No description provided for @exitAppDialogContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit the app?'**
  String get exitAppDialogContent;

  /// No description provided for @exitAppDialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get exitAppDialogCancel;

  /// No description provided for @exitAppDialogConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get exitAppDialogConfirm;

  /// No description provided for @dateInPastError.
  ///
  /// In en, this message translates to:
  /// **'Selected date cannot be in the past.'**
  String get dateInPastError;

  /// No description provided for @created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get created;

  /// No description provided for @announced.
  ///
  /// In en, this message translates to:
  /// **'Announced'**
  String get announced;

  /// No description provided for @started.
  ///
  /// In en, this message translates to:
  /// **'Started'**
  String get started;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @courseDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Course Details'**
  String get courseDetailsTitle;

  /// No description provided for @statusLabel.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get statusLabel;

  /// No description provided for @startDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDateLabel;

  /// No description provided for @priceLabel.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get priceLabel;

  /// No description provided for @paymentDeadlineLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment Deadline'**
  String get paymentDeadlineLabel;

  /// No description provided for @teacher.
  ///
  /// In en, this message translates to:
  /// **'Teacher'**
  String get teacher;

  /// No description provided for @subject.
  ///
  /// In en, this message translates to:
  /// **'Subject'**
  String get subject;

  /// No description provided for @enrollButton.
  ///
  /// In en, this message translates to:
  /// **'Enroll'**
  String get enrollButton;

  /// No description provided for @notAvailable.
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get notAvailable;

  /// No description provided for @days.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get days;

  /// No description provided for @noTeacherBio.
  ///
  /// In en, this message translates to:
  /// **'No teacher biography available.'**
  String get noTeacherBio;

  /// No description provided for @genericErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong on the server. Please try again later.'**
  String get genericErrorMessage;

  /// No description provided for @tooManyAttemptsMessage.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Please try again after {time}.'**
  String tooManyAttemptsMessage(Object time);

  /// No description provided for @tooManyAttemptsGenericMessage.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Please try again later.'**
  String get tooManyAttemptsGenericMessage;

  /// No description provided for @connectionTimeoutError.
  ///
  /// In en, this message translates to:
  /// **'The connection timed out. Please check your internet connection and try again.'**
  String get connectionTimeoutError;

  /// No description provided for @offlineError.
  ///
  /// In en, this message translates to:
  /// **'Oops! It looks like you are offline. Please check your connection and try again.'**
  String get offlineError;

  /// No description provided for @unauthorizedAccessError.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized access. Please log in again.'**
  String get unauthorizedAccessError;

  /// No description provided for @serverErrorWithMessage.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, Please try again later. {message}'**
  String serverErrorWithMessage(Object message);

  /// No description provided for @unexpectedError.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again.'**
  String get unexpectedError;

  /// No description provided for @scanToConfirmReceived.
  ///
  /// In en, this message translates to:
  /// **'Scan to confirm your received'**
  String get scanToConfirmReceived;

  /// No description provided for @received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get received;

  /// No description provided for @readyForPickup.
  ///
  /// In en, this message translates to:
  /// **'Ready for Pickup'**
  String get readyForPickup;

  /// No description provided for @salaryAidTitle.
  ///
  /// In en, this message translates to:
  /// **'Salary Aid'**
  String get salaryAidTitle;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @unknownAid.
  ///
  /// In en, this message translates to:
  /// **'Unknown Aid'**
  String get unknownAid;

  /// No description provided for @fatherName.
  ///
  /// In en, this message translates to:
  /// **'Father\'s Name'**
  String get fatherName;

  /// No description provided for @motherName.
  ///
  /// In en, this message translates to:
  /// **'Mother\'s Name'**
  String get motherName;

  /// No description provided for @birthDate.
  ///
  /// In en, this message translates to:
  /// **'Birth Date'**
  String get birthDate;

  /// No description provided for @birthPlace.
  ///
  /// In en, this message translates to:
  /// **'Birth Place'**
  String get birthPlace;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @healthStatus.
  ///
  /// In en, this message translates to:
  /// **'Health Status'**
  String get healthStatus;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile Number'**
  String get mobileNumber;

  /// No description provided for @residenceType.
  ///
  /// In en, this message translates to:
  /// **'Residence Type'**
  String get residenceType;

  /// No description provided for @caseDescription.
  ///
  /// In en, this message translates to:
  /// **'Case Description'**
  String get caseDescription;

  /// No description provided for @medicalHistory.
  ///
  /// In en, this message translates to:
  /// **'Medical History'**
  String get medicalHistory;

  /// No description provided for @childLabel.
  ///
  /// In en, this message translates to:
  /// **'Child'**
  String get childLabel;

  /// No description provided for @nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// No description provided for @ageLabel.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get ageLabel;

  /// No description provided for @isAlive.
  ///
  /// In en, this message translates to:
  /// **'Is Alive'**
  String get isAlive;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @partnerName.
  ///
  /// In en, this message translates to:
  /// **'Partner Name'**
  String get partnerName;

  /// No description provided for @residencePlace.
  ///
  /// In en, this message translates to:
  /// **'Residence Place'**
  String get residencePlace;

  /// No description provided for @noChildrenInfo.
  ///
  /// In en, this message translates to:
  /// **'No children information available.'**
  String get noChildrenInfo;

  /// No description provided for @uncleLabel.
  ///
  /// In en, this message translates to:
  /// **'Uncle'**
  String get uncleLabel;

  /// No description provided for @fromLabel.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get fromLabel;

  /// No description provided for @providedAid.
  ///
  /// In en, this message translates to:
  /// **'Provided Aid'**
  String get providedAid;

  /// No description provided for @noDependentsInfo.
  ///
  /// In en, this message translates to:
  /// **'No dependents information available.'**
  String get noDependentsInfo;

  /// No description provided for @job.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get job;

  /// No description provided for @nationalNumber.
  ///
  /// In en, this message translates to:
  /// **'National Number'**
  String get nationalNumber;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @monthlyIncome.
  ///
  /// In en, this message translates to:
  /// **'Monthly Income'**
  String get monthlyIncome;

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get pending;

  /// No description provided for @noNotifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications found.'**
  String get noNotifications;

  /// No description provided for @partnerLabel.
  ///
  /// In en, this message translates to:
  /// **'Partner'**
  String get partnerLabel;

  /// No description provided for @partnersInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Partners Information'**
  String get partnersInfoTitle;

  /// No description provided for @unclesInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Uncles Information'**
  String get unclesInfoTitle;

  /// No description provided for @backButton.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backButton;

  /// No description provided for @selectChildTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Child'**
  String get selectChildTitle;

  /// No description provided for @confirmButton.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmButton;

  /// No description provided for @cancelButton.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// No description provided for @appointmentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Appointments'**
  String get appointmentsTitle;

  /// No description provided for @pastAppointments.
  ///
  /// In en, this message translates to:
  /// **'Past'**
  String get pastAppointments;

  /// No description provided for @viewResultsButton.
  ///
  /// In en, this message translates to:
  /// **'View Results'**
  String get viewResultsButton;

  /// No description provided for @upcomingAppointments.
  ///
  /// In en, this message translates to:
  /// **'Past Appointments'**
  String get upcomingAppointments;

  /// No description provided for @appointmentDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Appointment Details'**
  String get appointmentDetailsTitle;

  /// No description provided for @appointmentInformationTitle.
  ///
  /// In en, this message translates to:
  /// **'Appointment Information'**
  String get appointmentInformationTitle;

  /// No description provided for @doctorNotesResultsTitle.
  ///
  /// In en, this message translates to:
  /// **'Doctor\'s Notes/Results'**
  String get doctorNotesResultsTitle;

  /// No description provided for @prescriptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Prescription'**
  String get prescriptionTitle;
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
