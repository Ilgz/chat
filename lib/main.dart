import 'package:chat/infrastructure/notification/notification_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/firebase_options.dart';
import 'package:chat/injection.dart';
import 'package:chat/presentation/core/widgets/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await NotificationController.initializeRemoteNotifications(debug: true);
  await NotificationController.getInitialNotificationAction();
  await NotificationController.startListeningNotificationEvents();
  await NotificationController.requestFirebaseToken();
  runApp(const AppWidget());
}



