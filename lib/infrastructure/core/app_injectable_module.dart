// app_injectable_module.dart

import 'package:chat/presentation/core/routes/router.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
@Scope(Environment.prod)
@module
abstract class AppInjectableProdModule {
  @singleton
  GoRouter get goRouterSingleton=>goRouter;
  @lazySingleton
  FirebaseAuth get firebaseAuthDev => FirebaseAuth.instance;
  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
  @lazySingleton
  FirebaseFirestore get firebaseFirestoreDev => FirebaseFirestore.instance;
  @lazySingleton
  http.Client get httpClient => http.Client();
  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();
  @preResolve
  Future<SharedPreferences> get sharedPreferences  =>
       SharedPreferences.getInstance();

}
