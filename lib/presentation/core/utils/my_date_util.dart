import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class MyDateUtil {
  // for getting formatted time from milliSecondsSinceEpochs String
  static String getFormattedTime(
      {required BuildContext context, required String time}) {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(time));
    return TimeOfDay.fromDateTime(date).format(context);
  }

  // for getting formatted time for sent & read
  static String getMessageTime(
      {required BuildContext context, required String time}) {
    final DateTime sent = DateTime.fromMillisecondsSinceEpoch(int.parse(time));
    final DateTime now = DateTime.now();

    final formattedTime = TimeOfDay.fromDateTime(sent).format(context);
    if (now.day == sent.day &&
        now.month == sent.month &&
        now.year == sent.year) {
      return formattedTime;
    }

    return now.year == sent.year
        ? '$formattedTime - ${sent.day} ${_getMonth(sent,context)}'
        : '$formattedTime - ${sent.day} ${_getMonth(sent,context)} ${sent.year}';
  }

  //get last message time (used in chat user card)
  static String getLastMessageTime(
      {required BuildContext context,
      required Timestamp timestamp,
      bool showYear = false}) {
    final DateTime sent = DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);
    final DateTime now = DateTime.now();

    if (now.day == sent.day &&
        now.month == sent.month &&
        now.year == sent.year) {
      return TimeOfDay.fromDateTime(sent).format(context);
    }

    return showYear
        ? '${sent.day} ${_getMonth(sent,context)} ${sent.year}'
        : '${sent.day} ${_getMonth(sent,context)}';
  }

  //get formatted last active time of user in chat screen
  static String getLastActiveTime(
      {required BuildContext context, required Timestamp lastActive}) {
    DateTime time = DateTime.fromMillisecondsSinceEpoch(lastActive.millisecondsSinceEpoch);
    DateTime now = DateTime.now();

    String formattedTime = TimeOfDay.fromDateTime(time).format(context);
    if (time.day == now.day &&
        time.month == now.month &&
        time.year == time.year) {
      return '${AppLocale.lastSeenTodayAt.getString(context)} $formattedTime';
    }

    if ((now.difference(time).inHours / 24).round() == 1) {
      return '${AppLocale.lastSeenYesterdayAt.getString(context)} $formattedTime';
    }
    return AppLocale.lastSeenALongTimeAgo.getString(context);
  }

  // get month name from month no. or index
  static String _getMonth(DateTime date,BuildContext context) {
    switch (date.month) {
      case 1:
        return AppLocale.jan.getString(context);
      case 2:
        return AppLocale.feb.getString(context);
      case 3:
        return AppLocale.mar.getString(context);
      case 4:
        return AppLocale.apr.getString(context);
      case 5:
        return AppLocale.may.getString(context);
      case 6:
        return AppLocale.jun.getString(context);
      case 7:
        return AppLocale.jul.getString(context);
      case 8:
        return AppLocale.aug.getString(context);
      case 9:
        return AppLocale.sept.getString(context);
      case 10:
        return AppLocale.oct.getString(context);
      case 11:
        return AppLocale.nov.getString(context);
      case 12:
        return AppLocale.dec.getString(context);
    }
    return 'NA';
  }
}
