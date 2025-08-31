// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get filter => 'Filter';

  @override
  String get all => 'All';

  @override
  String get english => 'English';

  @override
  String get arabic => 'العربية';

  @override
  String get organizationName => 'جمعية الشيخ محي الدين';

  @override
  String get loginWelcomeBack => 'مرحباً بعودتك!';

  @override
  String get loginPhoneNumberLabel => 'رقم الهاتف';

  @override
  String get loginPhoneNumberHint => '9XXXXXXXX';

  @override
  String get loginPasswordLabel => 'كلمة المرور';

  @override
  String get loginPasswordHint => 'أدخل كلمة المرور';

  @override
  String get loginForgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get loginButton => 'تسجيل الدخول';

  @override
  String get loginValidationPhoneNumberInvalid => 'أحرف غير صالحة في رقم الهاتف.';

  @override
  String get loginValidationPhoneNumberRequired => 'يرجى إدخال رقم هاتفك';

  @override
  String get loginValidationPhoneNumberStartsWith9 => 'يجب أن يبدأ رقم الهاتف بالرقم 9.';

  @override
  String get loginValidationPhoneNumberLength => 'يجب أن يتكون رقم الهاتف من 9 أرقام.';

  @override
  String get loginValidationPasswordMinLength => 'يجب أن لا تقل كلمة المرور عن 8 أحرف.';

  @override
  String get loginErrorNoInternet => 'لا يوجد اتصال بالإنترنت. يرجى التحقق من شبكتك.';

  @override
  String get loginErrorGeneric => 'فشل تسجيل الدخول. يرجى المحاولة مرة أخرى.';

  @override
  String get loginErrorInvalidCredentials => 'رقم الهاتف أو كلمة المرور غير صحيحة. يرجى المحاولة مرة أخرى.';

  @override
  String get loginSuccessMessage => 'تم تسجيل الدخول بنجاح!';

  @override
  String get otpConfirmAccount => 'تأكيد الحساب';

  @override
  String get otpMessage => 'لقد أرسلنا رمز OTP إلى الرقم الذي أدخلته';

  @override
  String get otpResendCode => 'إعادة إرسال الرمز';

  @override
  String get otpSubmitButton => 'تأكيد الحساب';

  @override
  String get otpInvalidCode => 'رمز OTP غير صالح. يرجى المحاولة مرة أخرى.';

  @override
  String get otpVerificationSuccess => 'تم التحقق من الحساب بنجاح!';

  @override
  String get otpVerificationFailure => 'فشل التحقق من الحساب. يرجى المحاولة مرة أخرى.';

  @override
  String get otpVerificationCodeSent => 'تم إرسال رمز التحقق بنجاح!';

  @override
  String get otpErrorInvalidCode => 'رمز OTP غير صالح. يرجى المحاولة مرة أخرى.';

  @override
  String get otpResendCodeSuccess => 'تم إعادة إرسال رمز OTP بنجاح!';

  @override
  String get language => 'اللغة';

  @override
  String get homeScreenTitle => 'الصفحة الرئيسية';

  @override
  String get homeQuickAccess => 'وصول سريع';

  @override
  String get homeServiceDispensaryTitle => 'قسم المستوصف';

  @override
  String get homeServiceDispensarySubtitle => 'نحرص على صحتكم\nتفضلوا بالاطلاع على خدمات العيادة المتوفرة';

  @override
  String get homeServiceEducationTitle => 'قسم التعليم';

  @override
  String get homeServiceEducationSubtitle => 'نسعى لتمكينكم بالعلم\nقم بزيارة قسم التعليم';

  @override
  String get homeQuickAccessPharmacies => 'الصيدليات المناوبة';

  @override
  String get homeQuickAccessAppointment => 'حجز موعد';

  @override
  String get homeQuickAccessFamilyInfo => 'عرض معلومات العائلة';

  @override
  String get homeQuickAccessCourses => 'تصفح أحدث الدورات';

  @override
  String get bottomNavMenu => 'القائمة';

  @override
  String get bottomNavHelp => 'المساعدة';

  @override
  String get bottomNavHome => 'الرئيسية';

  @override
  String get bottomNavScan => 'مسح';

  @override
  String get bottomNavNotifications => 'المساعدات';

  @override
  String get homeNoImages => 'لا توجد صور لعرضها';

  @override
  String get myRequestsTitle => 'طلباتي';

  @override
  String get myRequestsNoRequests => 'لا يوجد طلبات حالياً';

  @override
  String get myRequestsErrorPrefix => 'خطأ: ';

  @override
  String get myRequestsUnknownState => 'حالة غير معروفة';

  @override
  String get addRequestButtonLabel => 'إضافة طلب';

  @override
  String get requestHistoryLabel => 'سجل الطلبات';

  @override
  String get addRequestScreenTitle => 'طلب مساعدة مالية';

  @override
  String get amountLabel => 'المبلغ';

  @override
  String get amountHint => 'أدخل المبلغ';

  @override
  String get amountValidationErrorRequired => 'الرجاء إدخال المبلغ';

  @override
  String get amountValidationErrorInvalid => 'مبلغ غير صحيح';

  @override
  String get currencyUnitThousand => 'ألف';

  @override
  String get currencyUnitMillion => 'مليون';

  @override
  String get reasonLabel => 'السبب';

  @override
  String get reasonHint => 'أذكر سبب طلبك للمساعدة...';

  @override
  String get reasonValidationError => 'الرجاء إدخال سبب الطلب';

  @override
  String get descriptionLabel => 'الوصف';

  @override
  String get descriptionHint => 'أضف وصفاً تفصيلياً...';

  @override
  String get descriptionValidationError => 'الرجاء إدخال الوصف';

  @override
  String get notesLabel => 'ملاحظات';

  @override
  String get notesHint => 'أي ملاحظات إضافية...';

  @override
  String get submitRequestButton => 'طلب المساعدة المالية';

  @override
  String get requestSuccessMessage => 'تم إرسال طلبك بنجاح!';

  @override
  String get requestFailureMessageGeneric => 'فشل إرسال الطلب. حاول مرة أخرى.';

  @override
  String reasonTooShortError(int minLength) {
    return 'يجب أن يكون سبب الطلب $minLength أحرف على الأقل.';
  }

  @override
  String descriptionTooShortError(int minLength) {
    return 'يجب أن يكون الوصف التفصيلي $minLength أحرف على الأقل.';
  }

  @override
  String get amountValidationErrorPositive => 'يجب أن يكون المبلغ رقماً موجباً.';

  @override
  String get urgencyLevelLabel => 'مستوى الاستعجال';

  @override
  String get urgencyLevelNormal => 'عادي';

  @override
  String get urgencyLevelLow => 'منخفض';

  @override
  String get urgencyLevelMedium => 'متوسط';

  @override
  String get urgencyLevelHigh => 'عالي';

  @override
  String get selectDateHint => 'اختر التاريخ';

  @override
  String get receivedAtLabel => 'تاريخ الاستلام';

  @override
  String get warning => 'تحذير';

  @override
  String get receivedAtEmptyWarning => 'التاريخ والوقت فارغان. هل تريد المتابعة؟';

  @override
  String get cancel => 'إلغاء';

  @override
  String get continueText => 'متابعة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get theme => 'المظهر';

  @override
  String get aboutUs => 'حول التطبيق';

  @override
  String get customizeYourExperience => 'خصص تجربتك';

  @override
  String get editProfile => 'تعديل الملف الشخصي';

  @override
  String get enabled => 'مفعل';

  @override
  String get disabled => 'معطل';

  @override
  String get dark => 'داكن';

  @override
  String get light => 'فاتح';

  @override
  String get appInfo => 'معلومات التطبيق والدعم';

  @override
  String get johnDoe => 'جون دو';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'اسم العائلة';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get phone => 'رقم الهاتف';

  @override
  String get location => 'الموقع';

  @override
  String get save => 'حفظ';

  @override
  String get edit => 'تعديل';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get personalInfo => 'المعلومات الشخصية';

  @override
  String get addresses => 'العناوين';

  @override
  String get contactInfo => 'معلومات الاتصال';

  @override
  String get emailPreferences => 'تفضيلات البريد الإلكتروني';

  @override
  String get profileSections => 'أقسام الملف الشخصي';

  @override
  String get profileTitle => 'الملف الشخصي';

  @override
  String get profileEditProfile => 'تعديل الملف الشخصي';

  @override
  String get profilePersonalInfo => 'معلومات شخصية';

  @override
  String get profileFamilyInfo => 'معلومات العائلة';

  @override
  String get profileDependentsInfo => 'معلومات المعالين';

  @override
  String get profileGroupInfo => 'معلومات الفئة';

  @override
  String get profileAvailableAid => 'المساعدات المتوفرة';

  @override
  String get profileRequests => 'طلباتي';

  @override
  String get profileLogout => 'تسجيل الخروج';

  @override
  String get profileUserNamePlaceholder => 'اسم المستخدم';

  @override
  String get profileUserPhonePlaceholder => '098XXXXXXX';

  @override
  String get availableAidsTitle => 'المساعدات المتوفرة';

  @override
  String get aidHistoryLabel => 'سجل المساعدات';

  @override
  String get noAidsAvailable => 'لا توجد مساعدات مدرجة حالياً.';

  @override
  String get aidsErrorPrefix => 'خطأ في تحميل المساعدات: ';

  @override
  String get aidsUnknownState => 'حالة مساعدات غير معروفة.';

  @override
  String get requestDetailsTitle => 'تفاصيل الطلب';

  @override
  String get aidDetailsTitle => 'تفاصيل المساعدة';

  @override
  String get qrError => 'خطأ في عرض رمز الاستجابة السريعة. يرجى المحاولة مرة أخرى.';

  @override
  String get dateLabel => 'التاريخ';

  @override
  String get providedByLabel => 'مقدمة من';

  @override
  String get bottomNavMyRequests => 'طلباتي';

  @override
  String get bottomNavAids => 'المساعدات';

  @override
  String get appName => 'قسم التعليم والدورات';

  @override
  String greeting(String userName) {
    return 'مرحباً، $userName';
  }

  @override
  String get myChildren => 'أطفالي';

  @override
  String get newCourses => 'دورات جديدة';

  @override
  String get viewAllNewCourses => 'عرض كل الدورات الجديدة';

  @override
  String get home => 'الرئيسية';

  @override
  String get children => 'الأطفال';

  @override
  String get courses => 'الدورات';

  @override
  String get chat => 'الدردشة';

  @override
  String coursesLabel(int count) {
    return '$count دورات';
  }

  @override
  String balanceLabel(String amount) {
    return 'الرصيد: \$$amount';
  }

  @override
  String agesLabel(Object range) {
    return 'الأعمار $range';
  }

  @override
  String get noItemsAvailable => 'لا توجد عناصر متاحة في الوقت الحالي.';

  @override
  String get allCoursesScreenTitle => 'دورات جديدة';

  @override
  String get exploreNewCoursesTitle => 'استكشف الدورات الجديدة';

  @override
  String get exploreNewCoursesSubtitle => 'اكتشف أحدث الدورات المصممة لتعزيز رحلة تعلم طفلك. تم تصميم كل دورة من قبل معلمين خبراء لتوفير محتوى تعليمي جذاب وفعال.';

  @override
  String get requestSubscriptionButton => 'طلب اشتراك';

  @override
  String get courseMathExplorersTitle => 'مستكشفو الرياضيات';

  @override
  String get courseMathExplorersSubtitle => 'دورة ممتعة وتفاعلية لبناء مهارات الرياضيات الأساسية.';

  @override
  String get courseCreativeWritingTitle => 'ورشة الكتابة الإبداعية';

  @override
  String get courseCreativeWritingSubtitle => 'أطلق العنان لخيال طفلك من خلال دورة الكتابة الإبداعية لدينا.';

  @override
  String get courseScienceAdventuresTitle => 'مغامرات العلوم';

  @override
  String get courseScienceAdventuresSubtitle => 'استكشف عجائب العلوم من خلال التجارب العملية.';

  @override
  String get courseArtDesignTitle => 'أساسيات الفن والتصميم';

  @override
  String get courseArtDesignSubtitle => 'تعلم أساسيات الفن والتصميم من خلال دورتنا التمهيدية.';

  @override
  String get loadingCourses => 'جاري تحميل الدورات...';

  @override
  String get errorLoadingCourses => 'خطأ في تحميل الدورات. يرجى المحاولة مرة أخرى.';

  @override
  String get errorLabel => 'خطأ';

  @override
  String get childProfileTitle => 'ملف الطفل';

  @override
  String childIdLabel(String studentId) {
    return 'المعرف: $studentId';
  }

  @override
  String get coursesTab => 'الدورات';

  @override
  String get academicProgressTab => 'التقدم الأكاديمي';

  @override
  String get financialStatementTab => 'البيان المالي';

  @override
  String get currentSectionTitle => 'الحالية';

  @override
  String get pastSectionTitle => 'السابقة';

  @override
  String get noCoursesAvailable => 'لا توجد دورات متاحة لهذا القسم.';

  @override
  String get noDataAvailable => 'لا توجد بيانات متاحة.';

  @override
  String gradeLevelLabel(String level) {
    return 'الصف $level';
  }

  @override
  String get somethingWentWrong => 'حدث خطأ ما!';

  @override
  String get ok => 'حسناً';

  @override
  String get anErrorHappened => 'حدث خطأ';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get noInternetConnection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get serverIsDown => 'الخادم لا يعمل';

  @override
  String get internetConnectionFailed => 'فشل الاتصال بالإنترنت';

  @override
  String get errorTitle => 'خطأ';

  @override
  String get successTitle => 'نجاح';

  @override
  String get okButton => 'موافق';

  @override
  String get confirm => 'تأكيد';

  @override
  String get serverError => 'خطأ في الخادم';

  @override
  String get attendanceRecordTitle => 'سجل الحضور';

  @override
  String get attendanceLabel => 'الحضور';

  @override
  String get last30DaysLabel => 'آخر ٣٠ يومًا';

  @override
  String get gradesAndViolationsTitle => 'الدرجات والمخالفات';

  @override
  String get violationLabel => 'مخالفة';

  @override
  String get positiveAndNegativeNotesTitle => 'الملاحظات الإيجابية والسلبية';

  @override
  String get positiveNoteLabel => 'ملاحظة إيجابية';

  @override
  String get negativeNoteLabel => 'ملاحظة سلبية';

  @override
  String get financialOverviewTitle => 'نظرة عامة';

  @override
  String get amountDueLabel => 'المبلغ المستحق';

  @override
  String get amountPaidLabel => 'المبلغ المدفوع';

  @override
  String get paymentHistoryTitle => 'سجل المدفوعات';

  @override
  String get paymentReceivedLabel => 'تم استلام الدفعة';

  @override
  String get mondayShort => 'إثنين';

  @override
  String get tuesdayShort => 'ثلاثاء';

  @override
  String get wednesdayShort => 'أربعاء';

  @override
  String get thursdayShort => 'خميس';

  @override
  String get fridayShort => 'جمعة';

  @override
  String get noAcademicData => 'لا توجد بيانات أكاديمية متاحة لهذا الطفل.';

  @override
  String get noFinancialData => 'لا توجد بيانات مالية متاحة لهذا الطفل.';

  @override
  String get studentIdLabel => 'رقم الطالب';

  @override
  String get exitAppDialogTitle => 'الخروج من التطبيق';

  @override
  String get exitAppDialogContent => 'هل أنت متأكد أنك تريد الخروج من التطبيق؟';

  @override
  String get exitAppDialogCancel => 'إلغاء';

  @override
  String get exitAppDialogConfirm => 'تأكيد';

  @override
  String get dateInPastError => 'لا يمكن أن يكون تاريخ الاستلام في الماضي.';

  @override
  String get created => 'أنشئت';

  @override
  String get announced => 'أعلن';

  @override
  String get started => 'بدأت';

  @override
  String get finished => 'انتهى';

  @override
  String get courseDetailsTitle => 'تفاصيل الدورة';

  @override
  String get statusLabel => 'الحالة';

  @override
  String get startDateLabel => 'تاريخ البدء';

  @override
  String get priceLabel => 'السعر';

  @override
  String get paymentDeadlineLabel => 'الموعد النهائي للدفع';

  @override
  String get teacher => 'المعلم';

  @override
  String get subject => 'الموضوع';

  @override
  String get enrollButton => 'تسجيل';

  @override
  String get notAvailable => 'غير متاح';

  @override
  String get days => 'أيام';

  @override
  String get noTeacherBio => 'لا توجد سيرة ذاتية للمعلم متاحة.';

  @override
  String get genericErrorMessage => 'حدث خطأ ما على الخادم. يرجى المحاولة مرة أخرى لاحقاً.';

  @override
  String tooManyAttemptsMessage(Object time) {
    return 'عدد كبير جداً من المحاولات. يرجى المحاولة مرة أخرى بعد $time.';
  }

  @override
  String get tooManyAttemptsGenericMessage => 'عدد كبير جداً من المحاولات. يرجى المحاولة مرة أخرى لاحقاً.';

  @override
  String get connectionTimeoutError => 'انتهت مهلة الاتصال. يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.';

  @override
  String get offlineError => 'عذرًا! يبدو أنك غير متصل بالإنترنت. يرجى التحقق من اتصالك والمحاولة مرة أخرى.';

  @override
  String get unauthorizedAccessError => 'وصول غير مصرح به. يرجى تسجيل الدخول مرة أخرى.';

  @override
  String serverErrorWithMessage(Object message) {
    return 'حدث خطأ ما، يرجى المحاولة مرة أخرى لاحقاً. $message';
  }

  @override
  String get unexpectedError => 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.';

  @override
  String get scanToConfirmReceived => 'امسح للتأكيد على استلامك';

  @override
  String get received => 'تم الاستلام';

  @override
  String get readyForPickup => 'جاهز للاستلام';

  @override
  String get salaryAidTitle => 'مساعدة راتب';

  @override
  String get amount => 'المبلغ';

  @override
  String get unknownAid => 'مساعدة غير معروفة';

  @override
  String get fatherName => 'اسم الأب';

  @override
  String get motherName => 'اسم الأم';

  @override
  String get birthDate => 'تاريخ الميلاد';

  @override
  String get birthPlace => 'مكان الميلاد';

  @override
  String get gender => 'الجنس';

  @override
  String get healthStatus => 'الحالة الصحية';

  @override
  String get mobileNumber => 'رقم الجوال';

  @override
  String get residenceType => 'نوع الإقامة';

  @override
  String get caseDescription => 'وصف الحالة';

  @override
  String get medicalHistory => 'السجل الطبي';

  @override
  String get childLabel => 'طفل';

  @override
  String get nameLabel => 'اسم';

  @override
  String get ageLabel => 'العمر';

  @override
  String get isAlive => 'على قيد الحياة';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get partnerName => 'اسم الشريك';

  @override
  String get residencePlace => 'مكان الإقامة';

  @override
  String get noChildrenInfo => 'لا توجد معلومات عن الأطفال.';

  @override
  String get uncleLabel => 'عم';

  @override
  String get fromLabel => 'من';

  @override
  String get providedAid => 'المساعدة المقدمة';

  @override
  String get noDependentsInfo => 'لا توجد معلومات عن المعالين.';

  @override
  String get job => 'المهنة';

  @override
  String get nationalNumber => 'الرقم الوطني';

  @override
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get address => 'العنوان';

  @override
  String get monthlyIncome => 'الدخل الشهري';

  @override
  String get pending => 'قيد الانتظار';

  @override
  String get noNotifications => 'لا توجد إشعارات.';

  @override
  String get partnerLabel => 'شريك';

  @override
  String get partnersInfoTitle => 'معلومات الشركاء';

  @override
  String get unclesInfoTitle => 'معلومات الأعمام';

  @override
  String get backButton => 'رجوع';

  @override
  String get selectChildTitle => 'اختر طفل';

  @override
  String get confirmButton => 'تأكيد';

  @override
  String get cancelButton => 'إلغاء';

  @override
  String get appointmentsTitle => 'المواعيد';

  @override
  String get pastAppointments => 'السابقة';

  @override
  String get viewResultsButton => 'عرض النتائج';

  @override
  String get upcomingAppointments => 'المواعيد الماضية';

  @override
  String get appointmentDetailsTitle => 'تفاصيل الموعد';

  @override
  String get appointmentInformationTitle => 'معلومات الموعد';

  @override
  String get doctorNotesResultsTitle => 'ملاحظات/نتائج الطبيب';

  @override
  String get prescriptionTitle => 'الوصفة الطبية';
}
