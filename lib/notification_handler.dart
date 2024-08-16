import 'package:asaxiy_clone/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHandler {
  static final NotificationHandler _instance = NotificationHandler._internal();

  NotificationHandler._internal();

  factory NotificationHandler() {
    return _instance;
  }

  final _firebaseMessaging = FirebaseMessaging.instance;
  final _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<String> initializeNotifications() async {
    // Requesting permission for Firebase Messaging
    final settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission for Firebase Messaging');
    } else {
      print(
          'User declined or has not accepted permission for Firebase Messaging');
    }

    // Initialize local notifications
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('mipmap/launcher_icon');
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    final InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    // Firebase Messaging setup
    String? apns = await _firebaseMessaging.getAPNSToken();
    await Future.delayed(const Duration(seconds: 3));
    print("Firebase getAPNSToken: $apns");
    String? token = await _firebaseMessaging.getToken();
    print("Firebase Messaging Token: $token");

    FirebaseMessaging.onMessage.listen(_handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);
    return token ?? "";
  }

  // Local notification handlers
  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // Handle foreground notification for iOS
    showNotification(title, body);
  }

  void onDidReceiveNotificationResponse(NotificationResponse response) async {
    // Handle user interaction with the notification
    if (response.payload != null) {
      // Navigate to specific screen based on payload
      _navigateToScreen(response.payload);
    }
  }

  // Firebase Messaging handlers
  void _handleMessage(RemoteMessage message) {
    // Handle foreground message
    print("_handleMessage=${message.notification}");
    showNotification(
      message.notification?.title.toString(),
      message.notification?.body.toString(),
    );
  }

  void _handleMessageOpenedApp(RemoteMessage message) {
    print("_handleMessage2=${message.data}");
    // Handle message when app is opened from a notification
    _navigateToScreen(message.data['route']);
  }

  // Helper methods
  Future<void> showNotification(title, body) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      'my_channel_id_12',
      'Asaxiy clone notifications',
      channelDescription: 'This channel is used for notifications',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      color: Colors.white,
      icon: "mipmap/launcher_icon",
    );
    const DarwinNotificationDetails iOSPlatformChannelSpecifics =
        DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iOSPlatformChannelSpecifics,
    );

    await _flutterLocalNotificationsPlugin.show(
      1,
      title,
      body,
      notificationDetails,
      payload: 'item x',
    );
  }

  void _navigateToScreen(String? route) {
    // Navigate to specific screen based on the given route
    if (route != null && route.isNotEmpty) {
      // Add navigation logic
    }
  }
}

Future<void> _handleBackgroundMessage(RemoteMessage? message) async {
  if (message == null) return;

  await Firebase.initializeApp();

  // Handle foreground message
  print("_handleBackgroundMessage=${message.notification}");

  if (message.notification != null) {
    NotificationHandler().showNotification(
      message.notification?.title.toString(),
      message.notification?.body.toString(),
    );
  }
}
