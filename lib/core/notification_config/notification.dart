import 'dart:convert';
import 'dart:io';

import 'package:charity/core/services/cache_service.dart';
import 'package:charity/core/services/service_locator.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  await showNotification(message);
}

Future<void> showNotification(RemoteMessage message) async {
  print('Received message: ${message.toMap()}');
  print('Received message Data Title: ${message.notification!.title}');
  print('Received message Data Body: ${message.notification!.body}');

  final localNotification = FlutterLocalNotificationsPlugin();
  final notification = message.notification;
  // final data = message.data;

  if (notification == null) return;

  String? imageUrl = Platform.isAndroid
      ? message.notification!.android!.imageUrl
      : message.notification!.apple!.imageUrl;
  String? imagePath;

  if (imageUrl != null && imageUrl.isNotEmpty) {
    imagePath = await downloadAndSaveImage(imageUrl);
  }

  final androidNotificationDetails = AndroidNotificationDetails(
    androidChannel.id,
    androidChannel.name,
    enableLights: true,
    priority: Priority.max,
    visibility: NotificationVisibility.public,
    channelDescription: androidChannel.description,
    icon: '@drawable/icon',
    importance: Importance.max,
    styleInformation: imagePath != null
        ? BigPictureStyleInformation(
            FilePathAndroidBitmap(imagePath),
            largeIcon: FilePathAndroidBitmap(imagePath),
            contentTitle: notification.title,
            summaryText: notification.body,
          )
        : null,
  );

  final iosNotificationDetails = imagePath != null
      ? DarwinNotificationDetails(
          attachments: [DarwinNotificationAttachment(imagePath)],
        )
      : null;

  final notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
    iOS: iosNotificationDetails,
  );

  await localNotification.show(
    notification.hashCode,
    notification.title,
    notification.body,
    notificationDetails,
    payload: jsonEncode(message.toMap()),
  );
}

Future<String> downloadAndSaveImage(String url) async {
  final directory = await getApplicationDocumentsDirectory();

  String fileExtension = url.split('.').last.split('?').first;
  final fileName = 'notification_image.$fileExtension';

  final filePath = '${directory.path}/$fileName';
  final response = await http.get(Uri.parse(url));
  final file = File(filePath);
  await file.writeAsBytes(response.bodyBytes);

  print('Image downloaded to: $filePath');
  return filePath;
}

Future<void> handleMessageOnOpen(RemoteMessage? message) async {
  if (message == null) return;
  print('***********************************');
  print('Message From Notification is :=> ${message.toMap()}');
  print(message.notification!.body);
  print(message.notification!.title);
}

const androidChannel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Notifications',
  description: 'This channel is used for important notifications',
  importance: Importance.max,
);

class FirebaseApi {
  final firebaseMessaging = FirebaseMessaging.instance;
  final localNotification = FlutterLocalNotificationsPlugin();
  Future<void> initNotification() async {
    try {
      await firebaseMessaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        carPlay: false,
        provisional: false,
        criticalAlert: false,
      );
      if (Platform.isIOS) {
        String? apnsToken = await firebaseMessaging.getAPNSToken();
        print("APNS Token: $apnsToken");
      }
      final String? fcm = await FirebaseMessaging.instance.getToken();
      print("the fcm token is=> $fcm");
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
            alert: true,
            badge: true,
            sound: true,
          );

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        showNotification(message);
      });

      FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        handleMessageOnOpen(message);
      });

      var initializationSettingsAndroid = const AndroidInitializationSettings(
        '@drawable/icon',
      );

      var initializationSettingsIOS = const DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
      );

      var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
      );
      await localNotification.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: (details) {
          handleMessageOnOpen(
            RemoteMessage.fromMap(jsonDecode(details.payload!)),
          );
        },
      );
      final localeStorage = sl<CacheService>();
      // print('The fcm token is => $fcmToken');
      await localeStorage.saveData(key: 'fcm', value: fcm.toString());
    } catch (e) {
      print(e);
    }
  }
}
