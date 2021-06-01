/*
| ---------------------------------------------------------------------- 
| notifications
| ----------------------------------------------------------------------     
|
|
|
|
|
*/

import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

typedef OnDidReceiveLocalNotification = Future Function(
    int id, String title, String body, String payload);
typedef OnSelectNotification = Future Function(String payload);

class LocaleNotification {
  static LocaleNotification _instance;
  static FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  static LocaleNotification get instance {
    if (_instance == null) {
      _instance = LocaleNotification();
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    }
    return _instance;
  }

  initialisation(OnDidReceiveLocalNotification onDidReceiveLocalNotification,
      OnSelectNotification onSelectNotification) async {
    var initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher');
    var initializationSettingsIOS = IOSInitializationSettings(
        requestSoundPermission: true,
        requestBadgePermission: true,
        requestAlertPermission: true,
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);

    if (Platform.isIOS) {
      final bool result = await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
  }

  displayingNotification(String channelID, String channelName,
      String description, String title, String body,
      {String payload}) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        channelID, channelName, description,
        importance: Importance.Max, priority: Priority.High, ticker: 'ticker');
    var iOSPlatformChannelSpecifics = IOSNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin
        .show(0, title, body, platformChannelSpecifics, payload: payload);
  }
}
