import 'package:flutter/material.dart';

Future<void> showLoading(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: const CircularProgressIndicator(),
        ),
      ),
    ),
  );
}
