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

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

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
  /// **'رقم الطالب'**
  String get studentIdLabel;
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
