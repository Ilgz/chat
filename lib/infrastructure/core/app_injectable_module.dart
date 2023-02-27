// app_injectable_module.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
@Scope(Environment.prod)
@module
abstract class AppInjectableProdModule {
  @lazySingleton
  FirebaseAuth get firebaseAuthDev => FirebaseAuth.instance;
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
