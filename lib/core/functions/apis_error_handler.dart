import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:charity/l10n/app_localizations.dart'; // Import AppLocalizations
import '../animation/dialogs/dialogs.dart';
import '../shared/connect.dart';

void errorHandler({
  required DioException e,
  required BuildContext context,
}) async {
  final l10n = AppLocalizations.of(context)!;
  if (e.type == DioExceptionType.connectionError ||
      e.type == DioExceptionType.unknown) {
    await checkInternet()
        ? serverToast(context: context)
        : internetToast(context: context);
    print('Connection Error.');
    return;
  } else if (e.type == DioExceptionType.connectionTimeout) {
    print('connection timeout.');
    return;
  } else if (e.type == DioExceptionType.sendTimeout) {
    print('Send timeout.');
    return;
  } else {
    print(
      '=============================dio exception method ===============================',
    );
    if (e.response!.statusCode! > 500) {
      print('The response code is => ${e.response!.statusCode!}');
      errorDialog(context: context, text: l10n.serverError);
      return;
    }
  }
}

void errorHandlerWithoutInternet({
  required DioException e,
  required BuildContext context,
}) {
  final l10n = AppLocalizations.of(context)!;
  if (e.type == DioExceptionType.receiveTimeout) {
    print('Receive timeout.');
    return;
  } else if (e.type == DioExceptionType.sendTimeout) {
    print('Send timeout.');
    return;
  } else {
    print(
      '=============================dio exception method ===============================',
    );
    // if (e.response!.statusCode! > 500) {
    print('The response code is => ${e.response!.statusCode!}');
    errorDialog(context: context, text: l10n.serverError);
    return;
  }
}
