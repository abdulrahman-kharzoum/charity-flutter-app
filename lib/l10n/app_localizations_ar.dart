// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

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
  String get loginValidationPasswordRequired => 'يرجى إدخال كلمة المرور الخاصة بك';

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
  String get bottomNavNotifications => 'الإشعارات';

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
}
