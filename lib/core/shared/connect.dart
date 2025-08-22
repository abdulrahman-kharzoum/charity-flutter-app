import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<bool> checkInternet() async {
  final bool result = await InternetConnectionChecker.createInstance().hasConnection;
  return result;
}
