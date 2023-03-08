import 'package:chat/infrastructure/notification/notification_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/firebase_options.dart';
import 'package:chat/injection.dart';
import 'package:chat/presentation/core/widgets/app_widget.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  if(!kIsWeb){
    final fbm = FirebaseMessaging.instance;
    FirebaseMessaging.onMessage.listen((_){});
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    });
  }

  runApp(const AppWidget());

}

