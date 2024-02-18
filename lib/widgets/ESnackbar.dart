import 'package:flutter/material.dart';

class ESnackbar {
  static void showSuccess(context, message) {
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
      content: Text('$message'),
      backgroundColor: Colors.green,
    ));
  }

  static void showError(context, message) {
    ScaffoldMessenger.of(context).showSnackBar( SnackBar(
      content: Text('$message'),
      backgroundColor: Colors.red,
    ));
  }

}
