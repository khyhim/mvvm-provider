import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:mvvmprovider/configs/config.dart';
import 'package:mvvmprovider/configs/config_wrapper.dart';
import 'package:mvvmprovider/constants/constants.dart';
import 'package:mvvmprovider/helpers/locale_notification.dart';

FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Config config = ConfigWrapper.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F2F2F),
        title: Image.asset(
          'assets/icon/ic_logo.png',
          fit: BoxFit.fitHeight,
          width: 152,
          height: 11,
        ),
      ),
      body: Container(),
    );
  }

  initializeFirebaseMessage() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.getToken().then((value) {
      print("notification $value");
    });
    _firebaseMessaging.configure(
      onMessage: onMessage,
      onResume: onResume,
      onLaunch: onLaunch,
      onBackgroundMessage: Platform.isIOS ? null : myBackgroundMessageHandler,
    );
  }

  Future onMessage(Map<dynamic, dynamic> message) async {
    //run when receive notification in foreground
    print("notification onMessage $message");
    try {
      Map<dynamic, dynamic> notification = Platform.isAndroid
          ? message['notification']
          : message['aps']['alert'];
      // LocaleNotification.instance.displayingNotification(

      //     notification['title'],
      //     notification['body']
      //     );
    } catch (e) {
      print("Local $e");
    }
  }

  Future onResume(Map<String, dynamic> message) {
    print("notification onResume $message");
    //run when open app and click home, then receive notification
    //push to notification page
    Navigator.of(context).pushNamed('/notificaion_screen');
  }

  Future onLaunch(Map<String, dynamic> message) {
    print("notification onLaunch $message");
    //run when app is not yet open
    //push to notification page
    Navigator.of(context).pushNamed('/notificaion_screen');
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) {
    print("notification onDidReceiveLocalNotification $payload");
  }

  Future onSelectNotification(String payload) {
    print("notification onSelectNotification $payload");
    //run when click local notification
    //push to notification page
    Navigator.of(context).pushNamed('/notificaion_screen');
  }
}

Future<dynamic> myBackgroundMessageHandler(Map<String, dynamic> message) async {
  print("notification myBackgroundMessageHandler $message");
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
  }

  // Or do other work.
}
