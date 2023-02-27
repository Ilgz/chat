import 'package:flutter/material.dart';
import 'package:chat/domain/projects/project_failure.dart';

class FailureSnackBar extends SnackBar {
   FailureSnackBar({super.key, required this.failure}) : super(content:Text(failure.map(
      unexpected: (_) => "Unexpected error while updating...",
      insufficientPermission: (_) =>
      "Insufficient permissions",
      unableToUpdate: (_) => "Impossible Error")) ) ;
  final FirebaseFirestoreFailure failure;
}
