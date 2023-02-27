import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class ChatDayDividerCard extends StatelessWidget {
  const ChatDayDividerCard({Key? key,required this.date}) : super(key: key);
  final DateTime date;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          DateFormat.yMMMMd().format(
              date),
          style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 12)
        ),
      ),
    );
  }
}
