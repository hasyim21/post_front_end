import 'package:flutter/material.dart';

Future<void> showLoadingSyncData(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        title: const Text(
          'Sinkronisasi Data',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: const Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 20),
            Text('Sedang sinkronisasi...'),
          ],
        ),
      );
    },
  );
}
