import 'package:flutter/material.dart';

Future<Future<Object?>> navigateToScreen({
  required BuildContext context,
  required Widget screen,
}) async {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => screen,
    ),
  );
}
