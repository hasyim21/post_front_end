import 'package:flutter/material.dart';

import 'buttons.dart';

Future<void> showAlertDialog({
  required BuildContext context,
  required String content,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        title: const Text(
          'Peringatan',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(content),
        actions: [
          Button.filled(
            label: 'Ok',
            height: 40.0,
            width: 70.0,
            onPressed: () => Navigator.pop(context),
          ),
        ],
      );
    },
  );
}
