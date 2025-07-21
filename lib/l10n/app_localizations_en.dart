// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get organizationName => 'Sheikh Muhyiddin Charity';

  @override
  String get loginWelcomeBack => 'Welcome Back!';

  @override
  String get loginPhoneNumberLabel => 'Phone Number';

  @override
  String get loginPhoneNumberHint => '9XXXXXXXX';

  @override
  String get loginPasswordLabel => 'Password';

  @override
  String get loginPasswordHint => 'Enter your password';

  @override
  String get loginForgotPassword => 'Forget the password?';

  @override
  String get loginButton => 'Login';

  @override
  String get loginValidationPhoneNumberInvalid => 'Invalid characters in phone number.';

  @override
  String get loginValidationPhoneNumberRequired => 'Please enter your phone number';

  @override
  String get loginValidationPasswordRequired => 'Please enter your password';

  @override
  String get loginValidationPhoneNumberStartsWith9 => 'Phone number must start with 9.';

  @override
  String get loginValidationPhoneNumberLength => 'Phone number must be 9 digits long.';

  @override
  String get loginValidationPasswordMinLength => 'Password must be at least 8 characters.';

  @override
  String get loginErrorNoInternet => 'No internet connection. Please check your network.';

  @override
  String get loginErrorGeneric => 'Login failed. Please try again.';

  @override
  String get loginErrorInvalidCredentials => 'Invalid phone number or password. Please try again.';

  @override
  String get loginSuccessMessage => 'Login Successful!';

  @override
  String get language => 'Language';

  @override
  String get homeScreenTitle => 'Home Page';

  @override
  String get homeQuickAccess => 'Quick Access';

  @override
  String get homeServiceDispensaryTitle => 'Clinic Section';

  @override
  String get homeServiceDispensarySubtitle => 'We care for your health\nCheck out the available clinic services';

  @override
  String get homeServiceEducationTitle => 'Education Section';

  @override
  String get homeServiceEducationSubtitle => 'We strive to empower you with knowledge\nVisit the education section';

  @override
  String get homeQuickAccessPharmacies => 'On-Duty Pharmacies';

  @override
  String get homeQuickAccessAppointment => 'Book Appointment';

  @override
  String get homeQuickAccessFamilyInfo => 'View Family Info';

  @override
  String get homeQuickAccessCourses => 'Browse Latest Courses';

  @override
  String get bottomNavMenu => 'Menu';

  @override
  String get bottomNavHelp => 'Help';

  @override
  String get bottomNavHome => 'Home';

  @override
  String get bottomNavScan => 'Scan';

  @override
  String get bottomNavNotifications => 'Alerts';

  @override
  String get homeNoImages => 'No images to display';

  @override
  String get myRequestsTitle => 'My Requests';

  @override
  String get myRequestsNoRequests => 'No requests currently';

  @override
  String get myRequestsErrorPrefix => 'Error: ';

  @override
  String get myRequestsUnknownState => 'Unknown state';

  @override
  String get addRequestButtonLabel => 'Add Request';

  @override
  String get requestHistoryLabel => 'Request History';

  @override
  String get addRequestScreenTitle => 'Request Financial Aid';

  @override
  String get amountLabel => 'Amount';

  @override
  String get amountHint => 'Enter the amount';

  @override
  String get amountValidationErrorRequired => 'Please enter the amount';

  @override
  String get amountValidationErrorInvalid => 'Invalid amount';

  @override
  String get currencyUnitThousand => 'Thousand';

  @override
  String get currencyUnitMillion => 'Million';

  @override
  String get reasonLabel => 'Reason';

  @override
  String get reasonHint => 'State the reason for your request...';

  @override
  String get reasonValidationError => 'Please enter the reason for the request';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get descriptionHint => 'Add a detailed description...';

  @override
  String get descriptionValidationError => 'Please enter the description';

  @override
  String get notesLabel => 'Notes';

  @override
  String get notesHint => 'Any additional notes...';

  @override
  String get submitRequestButton => 'Request Financial Aid';

  @override
  String get requestSuccessMessage => 'Your request has been submitted successfully!';

  @override
  String get requestFailureMessageGeneric => 'Failed to submit request. Please try again.';

  @override
  String reasonTooShortError(int minLength) {
    return 'Reason must be at least $minLength characters long.';
  }

  @override
  String descriptionTooShortError(int minLength) {
    return 'Description must be at least $minLength characters long.';
  }

  @override
  String get amountValidationErrorPositive => 'Amount must be a positive number.';

  @override
  String get settings => 'Settings';

  @override
  String get profile => 'Profile';

  @override
  String get notifications => 'Notifications';

  @override
  String get theme => 'Theme';

  @override
  String get aboutUs => 'About Us';

  @override
  String get customizeYourExperience => 'Customize your experience';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get enabled => 'Enabled';

  @override
  String get disabled => 'Disabled';

  @override
  String get dark => 'Dark';

  @override
  String get light => 'Light';

  @override
  String get appInfo => 'App information and support';

  @override
  String get johnDoe => 'John Doe';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get email => 'Email';

  @override
  String get phone => 'Phone';

  @override
  String get location => 'Location';

  @override
  String get save => 'Save';

  @override
  String get edit => 'Edit';

  @override
  String get cancel => 'Cancel';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get personalInfo => 'Personal Info';

  @override
  String get addresses => 'Addresses';

  @override
  String get contactInfo => 'Contact Info';

  @override
  String get emailPreferences => 'Email Preferences';

  @override
  String get profileSections => 'Profile Sections';

  @override
  String get profileTitle => 'Profile';

  @override
  String get profileEditProfile => 'Edit Profile';

  @override
  String get profilePersonalInfo => 'Personal Information';

  @override
  String get profileFamilyInfo => 'Family Information';

  @override
  String get profileDependentsInfo => 'Dependents Information';

  @override
  String get profileGroupInfo => 'Group Information';

  @override
  String get profileAvailableAid => 'Available Aid';

  @override
  String get profileRequests => 'My Requests';

  @override
  String get profileLogout => 'Logout';

  @override
  String get profileUserNamePlaceholder => 'User Name';

  @override
  String get profileUserPhonePlaceholder => '098XXXXXXX';
}
