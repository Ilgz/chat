// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:awesome_notifications_fcm/awesome_notifications_fcm.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
//
//
//
//
// ///  *********************************************
// ///     NOTIFICATION CONTROLLER
// ///  *********************************************
//
// class NotificationController {
//   /// *********************************************
//   ///   SINGLETON PATTERN
//   /// *********************************************
//
//   static final NotificationController _instance =
//   NotificationController._internal();
//
//   factory NotificationController() {
//     return _instance;
//   }
//
//   NotificationController._internal();
//
//   /// *********************************************
//   ///  OBSERVER PATTERN
//   /// *********************************************
//
//   String _firebaseToken = '';
//   String get firebaseToken => _firebaseToken;
//
//   String _nativeToken = '';
//   String get nativeToken => _nativeToken;
//
//   ReceivedAction? initialAction;
//
//   /// *********************************************
//   ///   INITIALIZATION METHODS
//   /// *********************************************
//
//
//   static Future<void> initializeRemoteNotifications(
//       {required bool debug}) async {
//     await AwesomeNotificationsFcm().initialize(
//         onFcmSilentDataHandle: NotificationController.mySilentDataHandle,
//         onFcmTokenHandle: NotificationController.myFcmTokenHandle,
//         onNativeTokenHandle: NotificationController.myNativeTokenHandle,
//         licenseKeys:
//         // On this example app, the app ID / Bundle Id are different
//         // for each platform, so i used the main Bundle ID + 1 variation
//         [
//           // me.carda.awesomeNotificationsFcmExample
//           'B3J3yxQbzzyz0KmkQR6rDlWB5N68sTWTEMV7k9HcPBroUh4RZ/Og2Fv6Wc/lE'
//               '2YaKuVY4FUERlDaSN4WJ0lMiiVoYIRtrwJBX6/fpPCbGNkSGuhrx0Rekk'
//               '+yUTQU3C3WCVf2D534rNF3OnYKUjshNgQN8do0KAihTK7n83eUD60=',
//
//           // me.carda.awesome_notifications_fcm_example
//           'UzRlt+SJ7XyVgmD1WV+7dDMaRitmKCKOivKaVsNkfAQfQfechRveuKblFnCp4'
//               'zifTPgRUGdFmJDiw1R/rfEtTIlZCBgK3Wa8MzUV4dypZZc5wQIIVsiqi0Zhaq'
//               'YtTevjLl3/wKvK8fWaEmUxdOJfFihY8FnlrSA48FW94XWIcFY=',
//         ],
//         debug: debug);
//   }
//
//   static Future<void> startListeningNotificationEvents() async {
//     AwesomeNotifications()
//         .setListeners(onActionReceivedMethod: onActionReceivedMethod);
//   }
//
//   ///  *********************************************
//   ///     LOCAL NOTIFICATION EVENTS
//   ///  *********************************************
//
//   static Future<void> getInitialNotificationAction() async {
//     ReceivedAction? receivedAction = await AwesomeNotifications()
//         .getInitialNotificationAction(removeFromActionEvents: true);
//     if (receivedAction == null) return;
//     print('Notification action launched app: $receivedAction');
//   }
//
//   @pragma('vm:entry-point')
//   static Future<void> onActionReceivedMethod(
//       ReceivedAction receivedAction) async {
//   }
//
//   ///  *********************************************
//   ///     REMOTE NOTIFICATION EVENTS
//   ///  *********************************************
//
//   /// Use this method to execute on background when a silent data arrives
//   /// (even while terminated)
//   @pragma("vm:entry-point")
//   static Future<void> mySilentDataHandle(FcmSilentData silentData) async {
//     if (silentData.createdLifeCycle != NotificationLifeCycle.Foreground) {
//       print("bg");
//     } else {
//       print("FOREGROUND");
//     }
//
//     print('mySilentDataHandle received a FcmSilentData execution');
//     await executeLongTaskInBackground();
//   }
//
//   /// Use this method to detect when a new fcm token is received
//   @pragma("vm:entry-point")
//   static Future<void> myFcmTokenHandle(String token) async {
//     debugPrint('Firebase Token:"$token"');
//     _instance._firebaseToken = token;
//   }
//
//   /// Use this method to detect when a new native token is received
//   @pragma("vm:entry-point")
//   static Future<void> myNativeTokenHandle(String token) async {
//     debugPrint('Native Token:"$token"');
//     _instance._nativeToken = token;
//   }
//
//   ///  *********************************************
//   ///     BACKGROUND TASKS TEST
//   ///  *********************************************
//
//   static Future<void> executeLongTaskInBackground() async {
//     print("starting long task");
//     await Future.delayed(const Duration(seconds: 4));
//     final url = Uri.parse("http://google.com");
//     final re = await http.get(url);
//     print(re.body);
//     print("long task done");
//   }
//   static Future<void> resetBadge() async {
//     await AwesomeNotifications().resetGlobalBadge();
//   }
//   static Future<String> requestFirebaseToken() async {
//     if (await AwesomeNotificationsFcm().isFirebaseAvailable) {
//       try {
//         return await AwesomeNotificationsFcm().requestFirebaseAppToken();
//       } catch (exception) {
//         debugPrint('$exception');
//       }
//     } else {
//       debugPrint('Firebase is not available on this project');
//     }
//     return '';
//   }
// }
//
//
//
//
