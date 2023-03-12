import 'package:chat/domain/core/locale_switcher/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class ErrorChatTile extends StatelessWidget {
  const ErrorChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          AppLocale.unexpectedError.getString(context),
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
