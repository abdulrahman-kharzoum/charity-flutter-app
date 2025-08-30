// ignore_for_file: constant_identifier_names

class EndPoints {
  // static const String baseUrl = 'http://127.0.0.1:8000/api/';
  // static const String baseUrl = 'http://localhost:8000/api/';
  static const String baseUrl = 'http://10.0.2.2:8000/api/';
  // static const String baseUrl = 'http://213.136.92.110/api/';
  static const String auth_user_login_attempt = 'auth/user/login-attempt';
  static const String auth_attempt_otp_verify = 'auth/attempt/otp/verify';
  static const String auth_attempt_otp_resend = 'auth/attempt/otp/resend';
  static const String mobile_education_home = 'mobile/education/home';
  static const String mobile_education_new_courses_all = 'mobile/education/new-courses/all';
  static const String mobile_instant_aids_create = 'mobile/instant-aids/create';

  static const String mobile_beneficiaries_aids = 'mobile/beneficiaries/aids';
  static const String mobile_beneficiaries = 'mobile/beneficiaries';
  static const String mobile_aids_qr = 'mobile/aids/qr';
  static const String mobile_beneficiaries_show = 'mobile/beneficiaries/show';
  static const String mobile_my_notifications = 'mobile/my-notifications';
}
