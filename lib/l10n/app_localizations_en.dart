// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get english => 'English';

  @override
  String get arabic => 'Arabic';

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
  String get bottomNavNotifications => 'Aids';

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

  @override
  String get availableAidsTitle => 'Available Aids';

  @override
  String get aidHistoryLabel => 'Aid History';

  @override
  String get noAidsAvailable => 'No aids are currently listed.';

  @override
  String get aidsErrorPrefix => 'Error loading aids: ';

  @override
  String get aidsUnknownState => 'Unknown aids state.';

  @override
  String get requestDetailsTitle => 'Request Details';

  @override
  String get aidDetailsTitle => 'Aid Details';

  @override
  String get qrError => 'Error displaying QR Code. Please try again.';

  @override
  String get dateLabel => 'Date';

  @override
  String get providedByLabel => 'Provided by';

  @override
  String get bottomNavMyRequests => 'My Requests';

  @override
  String get bottomNavAids => 'Aids';

  @override
  String get appName => 'Education and Courses ';

  @override
  String greeting(String userName) {
    return 'Hello, $userName';
  }

  @override
  String get myChildren => 'My Children';

  @override
  String get newCourses => 'New Courses';

  @override
  String get viewAllNewCourses => 'View All New Courses';

  @override
  String get home => 'Home';

  @override
  String get children => 'Children';

  @override
  String get courses => 'Courses';

  @override
  String get chat => 'Chat';

  @override
  String coursesLabel(int count) {
    return '$count Courses';
  }

  @override
  String balanceLabel(String amount) {
    return 'Balance: \$$amount';
  }

  @override
  String agesLabel(Object range) {
    return 'Ages $range';
  }

  @override
  String get noItemsAvailable => 'No items available at the moment.';

  @override
  String get allCoursesScreenTitle => 'New Courses';

  @override
  String get exploreNewCoursesTitle => 'Explore New Courses';

  @override
  String get exploreNewCoursesSubtitle => 'Discover the latest courses designed to enhance your child\'s learning journey. Each course is crafted by expert educators to provide engaging and effective educational content.';

  @override
  String get requestSubscriptionButton => 'Request Subscription';

  @override
  String get courseMathExplorersTitle => 'Math Explorers';

  @override
  String get courseMathExplorersSubtitle => 'A fun and interactive course to build foundational math skills.';

  @override
  String get courseCreativeWritingTitle => 'Creative Writing Workshop';

  @override
  String get courseCreativeWritingSubtitle => 'Unleash your child\'s imagination with our creative writing course.';

  @override
  String get courseScienceAdventuresTitle => 'Science Adventures';

  @override
  String get courseScienceAdventuresSubtitle => 'Explore the wonders of science through hands-on experiments.';

  @override
  String get courseArtDesignTitle => 'Art & Design Fundamentals';

  @override
  String get courseArtDesignSubtitle => 'Learn the basics of art and design with our introductory course.';

  @override
  String get loadingCourses => 'Loading courses...';

  @override
  String get errorLoadingCourses => 'Error loading courses. Please try again.';

  @override
  String get errorLabel => 'Error';

  @override
  String get childProfileTitle => 'Child Profile';

  @override
  String childIdLabel(String studentId) {
    return 'ID: $studentId';
  }

  @override
  String get coursesTab => 'Courses';

  @override
  String get academicProgressTab => 'Academic Progress';

  @override
  String get financialStatementTab => 'Financial Statement';

  @override
  String get currentSectionTitle => 'Current';

  @override
  String get pastSectionTitle => 'Past';

  @override
  String get noCoursesAvailable => 'No courses available for this section.';

  @override
  String get noDataAvailable => 'No data available.';

  @override
  String gradeLevelLabel(String level) {
    return 'Grade $level';
  }

  @override
  String get attendanceRecordTitle => 'Attendance Record';

  @override
  String get attendanceLabel => 'Attendance';

  @override
  String get last30DaysLabel => 'Last 30 Days';

  @override
  String get gradesAndViolationsTitle => 'Grades and Violations';

  @override
  String get violationLabel => 'Violation';

  @override
  String get positiveAndNegativeNotesTitle => 'Positive and Negative Notes';

  @override
  String get positiveNoteLabel => 'Positive Note';

  @override
  String get negativeNoteLabel => 'Negative Note';

  @override
  String get financialOverviewTitle => 'Overview';

  @override
  String get amountDueLabel => 'Amount Due';

  @override
  String get amountPaidLabel => 'Amount Paid';

  @override
  String get paymentHistoryTitle => 'Payment History';

  @override
  String get paymentReceivedLabel => 'Payment Received';

  @override
  String get mondayShort => 'Mon';

  @override
  String get tuesdayShort => 'Tue';

  @override
  String get wednesdayShort => 'Wed';

  @override
  String get thursdayShort => 'Thu';

  @override
  String get fridayShort => 'Fri';

  @override
  String get noAcademicData => 'No academic data available for this child.';

  @override
  String get noFinancialData => 'No financial data available for this child.';

  @override
  String get studentIdLabel => 'رقم الطالب';
}
